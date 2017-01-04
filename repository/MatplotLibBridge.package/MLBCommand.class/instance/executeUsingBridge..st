executing
executeUsingBridge: aMLBBridge
	| functionName attributes remoteVar |
	functionName := self pyplotModuleName , '.' , self functionName.
	attributes := self mlbAttributesDict.
	remoteVar := MLBRemoteVariable new.
	(self mlbAttributesDict isEmpty and: [ self mlbPositionalAttributes isEmpty ])
		ifTrue: [
			aMLBBridge invokePythonFunction: functionName storedIn: remoteVar.
			^ remoteVar ].
	aMLBBridge
		invokePythonFunction: functionName
		withListArgs: ((self mlbPositionalAttributeAccessorsAndPositions sorted: [ :a :b | a tail < b tail ])
								collect: #head)
		dictArgs: self mlbAttributesDict
		storedIn: remoteVar.
	^ remoteVar