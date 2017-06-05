optimizing
removeDuplicatedImport: aP3GInstructionsList
	| alreadyImported newInstructions |
	self flag: #todo. "Fix dirty hack below."
	alreadyImported := OrderedCollection new.
	newInstructions := OrderedCollection new.
	aP3GInstructionsList do: [ :inst |
		inst isImport
			ifTrue: [ 
				((alreadyImported collect: #generate) includes: inst generate) "Dirty fix, TODO"
					ifFalse: [ 
						newInstructions add: inst.
						alreadyImported add: inst ] ]
			ifFalse: [ 
				newInstructions add: inst ] ].
	aP3GInstructionsList instructions: newInstructions