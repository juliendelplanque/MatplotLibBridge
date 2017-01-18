generating
generateInstructions
	^ P3GInstructionsList new
		add: (P3GImport moduleNamed: self moduleName);
		add: (P3GCall new
					target: (P3GAttributeReference
									target: self moduleName asP3GIdentifier
									attributeIdentifier: self functionName asP3GIdentifier);
					positionalArguments: self mlbPositionalAttributes;
					keywordArguments: self mlbAttributesDict;
					yourself);
		yourself