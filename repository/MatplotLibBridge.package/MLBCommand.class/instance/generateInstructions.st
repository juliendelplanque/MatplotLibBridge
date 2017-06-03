generating
generateInstructions
	^ P3GInstructionsList new
		add: self module import;
		add: ((self module => self functionName)
					callWith: self mlbPositionalAttributes with: self mlbAttributesDict);
		yourself