building
inBuild
	self data anyOne isCollection
		ifFalse: [ self singleDataBuild ]
		ifTrue: [ self multiDataBuild ]