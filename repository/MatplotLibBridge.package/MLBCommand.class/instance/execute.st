executing
execute
	| remoteVar |
	remoteVar := MLBRemoteVariable new.
	(P3GImport moduleNamed: self moduleName)
		execute.
	P3GFunctionInvocation new
		target: (P3GIdentifier named: self moduleName);
		functionName: self functionName;
		positionalArguments: self mlbPositionalAttributes;
		keywordArguments: self mlbAttributesDict;
		executeAndStoreIn: remoteVar.
	^ remoteVar