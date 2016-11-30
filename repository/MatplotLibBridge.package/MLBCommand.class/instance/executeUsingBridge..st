executing
executeUsingBridge: aMLBBridge
	| functionName attributes remoteVar |
	functionName := self pyplotModuleName , '.' , self functionName.
	attributes := self mlbAttributesDict.
	remoteVar := MLBRemoteVariable new.
	attributes
		ifEmpty: [
			aMLBBridge invokePythonFunction: functionName storedIn: remoteVar.
			^ remoteVar ].
	aMLBBridge invokePythonFunction: functionName with: self mlbAttributesDict storedIn: remoteVar.
	^ remoteVar