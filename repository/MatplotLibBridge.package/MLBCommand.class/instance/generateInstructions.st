generating
generateInstructions
	^ P3GInstructionsList new
		add: (P3GImport moduleNamed: self moduleName);
		add: (P3GFunctionInvocation new
					target: (P3GIdentifier named: self moduleName);
					functionName: self functionName;
					positionalArguments: self mlbPositionalAttributes;
					keywordArguments: self mlbAttributesDict;
					yourself);
		yourself