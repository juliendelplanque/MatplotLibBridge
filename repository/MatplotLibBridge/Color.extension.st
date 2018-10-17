Extension { #name : #Color }

{ #category : #'*MatplotLibBridge' }
Color >> writePython3On: aStream [
	aStream
		<< '''#';
		<< self asHexString;
		<< ''''
]
