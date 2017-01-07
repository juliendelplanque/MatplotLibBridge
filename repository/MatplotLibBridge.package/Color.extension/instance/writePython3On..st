*MatplotLibBridge
writePython3On: aStream
	aStream
		<< '''#';
		<< self asHexString;
		<< ''''