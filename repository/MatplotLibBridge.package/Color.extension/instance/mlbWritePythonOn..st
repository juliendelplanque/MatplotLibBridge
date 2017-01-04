*MatplotLibBridge
mlbWritePythonOn: aStream
	aStream
		<< '''#';
		<< self asHexString;
		<< ''''