"
I am an abstract command.

My subclasses need to set my #target inst var with the name of the target to apply the python function on.

They may use the <mlbAttribute> or <mlbAttribute: N> pragma to define respectively: inst var that will be used as keyword arguments and inst var that will be used as positional arguments during the function call. The N argument of the pragma is the position of the argument.
"
Class {
	#name : #MLBCommand,
	#superclass : #Object,
	#instVars : [
		'module'
	],
	#category : #'MatplotLibBridge-Commands-Core'
}

{ #category : #comparing }
MLBCommand >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ self module = anObject module
		and: [ self functionName = anObject functionName
			and: [ self mlbPositionalAttributes = anObject mlbPositionalAttributes
				and: [ self mlbAttributesDict = anObject mlbAttributesDict ] ] ]
]

{ #category : #execute }
MLBCommand >> execute [
	self generateInstructions execute
]

{ #category : #accessing }
MLBCommand >> functionName [
	^ self subclassResponsibility
]

{ #category : #generating }
MLBCommand >> generateInstructions [
	^ P3GInstructionsList new
		add: self module import;
		add: ((self module => self functionName)
					callWith: self mlbPositionalAttributes with: self mlbAttributesDict);
		yourself
]

{ #category : #comparing }
MLBCommand >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ ((module hash 
		bitXor: self functionName hash)
			bitXor: self mlbPositionalAttributes hash)
				bitXor: self mlbAttributesDict hash
]

{ #category : #accessing }
MLBCommand >> mlbAttributeAccessors [
	^ self mlbKeywordAttributePragmas collect: #methodSelector
]

{ #category : #accessing }
MLBCommand >> mlbAttributesDict [
	^ (self mlbAttributeAccessors
		select: [ :selector | (selector value: self) isNotNil ]
		thenCollect: [ :selector | selector -> (selector value: self) ]) asDictionary
]

{ #category : #accessing }
MLBCommand >> mlbKeywordAttributePragmas [
	^ Pragma allNamed: #mlbAttribute in: self class
]

{ #category : #accessing }
MLBCommand >> mlbPositionalAttributePragmas [
	^ Pragma allNamed: #mlbAttribute: in: self class
]

{ #category : #accessing }
MLBCommand >> mlbPositionalAttributes [
	^ ((self mlbPositionalAttributePragmas
		select: [ :p | (p methodSelector value: self) isNotNil ]
		thenCollect: [ :p | (p methodSelector value: self) -> p arguments first ])
		sorted: [ :a :b | a value < b value ]) collect: #key
]

{ #category : #accessing }
MLBCommand >> module [
	^ module
]

{ #category : #accessing }
MLBCommand >> module: anObject [
	module := anObject
]
