executing
executeUsingBridge: aMLBBridge
	| functionName attributes |
	functionName := self pyplotModuleName , '.' , self functionName.
	attributes := self mlbAttributesDict.
	attributes
		ifEmpty: [
			aMLBBridge invokePythonFunction: functionName.
			^ self ].
	
	aMLBBridge invokePythonFunction: functionName with: self mlbAttributesDict