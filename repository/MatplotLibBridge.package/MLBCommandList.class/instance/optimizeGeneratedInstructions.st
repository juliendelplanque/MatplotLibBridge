optimizing
optimizeGeneratedInstructions
	"Send #generateInstructions and modify the instructions so the whole set
	 of instructions is optimized."
	| instructionsList |
	instructionsList := self generateInstructions.
	self
		removeDuplicatedImport: instructionsList.
	^ instructionsList