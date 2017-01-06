translating
mlbWritePythonOn: aStream
	self target mlbWritePythonOn: aStream.
	aStream
		<< ' = '.
	self toAssignate mlbWritePythonOn: aStream