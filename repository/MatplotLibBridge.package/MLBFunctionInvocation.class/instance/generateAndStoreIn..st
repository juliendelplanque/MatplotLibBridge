building
generateAndStoreIn: aMLBRemoteVariable
	^ String streamContents: [ :s | self buildInvocationAndStorageIn: aMLBRemoteVariable on: s ]