"
I am a list of command to be executed.
I ensure that the Python code is not too ugly (e.g. I avoid to import multiple time the same package).
"
Class {
	#name : #MLBCommandList,
	#superclass : #Object,
	#instVars : [
		'commands'
	],
	#category : 'MatplotLibBridge-Commands'
}

{ #category : #comparing }
MLBCommandList >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ self commands = anObject commands
]

{ #category : #adding }
MLBCommandList >> add: aMLBCommand [
	self commands add: aMLBCommand
]

{ #category : #adding }
MLBCommandList >> addAll: aCollection [
	self commands addAll: aCollection
]

{ #category : #accessing }
MLBCommandList >> commands [
	^ commands
]

{ #category : #accessing }
MLBCommandList >> commands: anObject [
	commands := anObject
]

{ #category : #enumerating }
MLBCommandList >> do: aBlock [
	self commands do: aBlock
]

{ #category : #execute }
MLBCommandList >> execute [
	self generateInstructions execute
]

{ #category : #execute }
MLBCommandList >> executeOptimized [
	self optimizeGeneratedInstructions execute
]

{ #category : #generating }
MLBCommandList >> generateInstructions [
	"Returns the P3GInstructionsList resulting of the combinations of the
	 commands I hold."
	| instructions |
	instructions := P3GInstructionsList new.
	self commands do: [ :command |
		command generateInstructions do: [ :inst |
			instructions add: inst ] ].
	^ instructions
]

{ #category : #comparing }
MLBCommandList >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ commands hash
]

{ #category : #initialization }
MLBCommandList >> initialize [
	super initialize.
	self commands: OrderedCollection new
]

{ #category : #optimizing }
MLBCommandList >> optimizeGeneratedInstructions [
	"Send #generateInstructions and modify the instructions so the whole set
	 of instructions is optimized."
	| instructionsList |
	instructionsList := self generateInstructions.
	self
		removeDuplicatedImport: instructionsList;
		setImportInstructionsFirst: instructionsList.
	^ instructionsList
]

{ #category : #removing }
MLBCommandList >> remove: aMLBCommand [
	self commands remove: aMLBCommand
]

{ #category : #optimizing }
MLBCommandList >> removeDuplicatedImport: aP3GInstructionsList [
	| alreadyImported newInstructions |
	alreadyImported := OrderedCollection new.
	newInstructions := OrderedCollection new.
	aP3GInstructionsList do: [ :inst |
		inst isImport
			ifTrue: [ 
				|importCode|
				importCode := inst generate.
				(alreadyImported anySatisfy: [ :any | any generate = importCode ])
					ifFalse: [ 
						newInstructions add: inst.
						alreadyImported add: inst ] ]
			ifFalse: [ 
				newInstructions add: inst ] ].
	aP3GInstructionsList instructions: newInstructions
]

{ #category : #optimizing }
MLBCommandList >> setImportInstructionsFirst: aP3GInstructionsList [
	| weights |
	weights := Dictionary new.
	aP3GInstructionsList instructions doWithIndex: [ :instruction :index |
		instruction isImport
			ifTrue: [ weights at: instruction put: 0 ]
			ifFalse: [ weights at: instruction put: index ] ].
	
	aP3GInstructionsList instructions sort: [ :a :b |
		(weights at: a) < (weights at: b) ]
	
	
]
