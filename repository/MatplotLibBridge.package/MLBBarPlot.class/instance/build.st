building
build
	self data anyOne isCollection
		ifFalse: [ self singleDataBuild ]
		ifTrue: [ self multiDataBuild ].
	super build