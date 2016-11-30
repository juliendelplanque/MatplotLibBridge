executing
executeOn: aMLBRemoteVariable usingBridge: aMLBBridge
	| functionName attributes remoteVar |
	functionName := {aMLBRemoteVariable name . self pyplotModuleName . self functionName} joinUsing: $..
	attributes := self mlbAttributesDict.
	attributes
		ifEmpty: [
			aMLBBridge invokePythonFunction: functionName.
			^ self ].
	remoteVar := MLBRemoteVariable new.
	aMLBBridge invokePythonFunction: functionName with: self mlbAttributesDict storedIn: remoteVar.
	^ remoteVar