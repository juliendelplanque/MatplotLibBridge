*MatplotLibBridge
mlbWritePythonOn: aWriteStream 
	aWriteStream << ${.
	self associations do: [ :assoc |
		assoc head mlbWritePythonOn: aWriteStream.
		aWriteStream << ' : '.
		assoc tail mlbWritePythonOn: aWriteStream ] separatedBy: [ aWriteStream << ' , ' ].
	aWriteStream << $}