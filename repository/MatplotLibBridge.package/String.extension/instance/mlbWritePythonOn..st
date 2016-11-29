*MatplotLibBridge
mlbWritePythonOn: aStream
	aStream
		<< $';
		<< self;
		<< $'