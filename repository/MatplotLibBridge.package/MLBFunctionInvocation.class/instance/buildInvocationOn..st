building
buildInvocationOn: aStream
	self target
		ifNotNil: [ 
			aStream
				<< self target;
				<< $. ].
	aStream
		<< self functionName;
		<< $(.
	self positionalArguments 
		do: [ :arg | arg mlbWritePythonOn: aStream ]
		separatedBy: [ aStream << $, ].
	(self positionalArguments isNotEmpty and: [ 
		self keywordArguments isNotEmpty ])
			ifTrue: [ aStream << $, ].
	self keywordArguments associations
		do: [ :assoc |
			assoc head isString
				ifFalse: [ self error: 'Keys of keyword arguments dict must be strings.' ].
			aStream << assoc head.
			aStream << $=.
			assoc tail mlbWritePythonOn: aStream ]
		separatedBy: [ aStream << $, ].
	aStream
		<< $)