building
buildInvocationAndStorageIn: aMLBRemoteVariable on: aStream
	aMLBRemoteVariable mlbWritePythonOn: aStream.
	aStream << ' = '.
	self buildInvocationOn: aStream