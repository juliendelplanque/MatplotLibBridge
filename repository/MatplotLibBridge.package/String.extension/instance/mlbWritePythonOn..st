*MatplotLibBridge
mlbWritePythonOn: aStream
	aStream
		<< $';
		<< ((self splitOn: '\') joinUsing: '\\');
		<< $'