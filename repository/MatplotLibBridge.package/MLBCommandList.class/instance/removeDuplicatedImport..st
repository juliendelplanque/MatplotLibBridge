optimizing
removeDuplicatedImport: aP3GInstructionsList
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