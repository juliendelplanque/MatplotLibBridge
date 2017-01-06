translating
mlbWritePythonOn: aStream
	aStream
		<< 'import ';
		<< self moduleName