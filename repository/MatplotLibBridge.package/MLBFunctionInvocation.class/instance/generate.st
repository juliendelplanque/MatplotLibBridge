building
generate
	^ String streamContents: [ :s | self buildInvocationOn: s ]