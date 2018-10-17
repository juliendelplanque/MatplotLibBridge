Extension { #name : #P3GCall }

{ #category : #'*MatplotLibBridge' }
P3GCall >> executeAndStoreIn: aMLBRemoteVariable [
	| assignment |
	assignment := P3GAssignment new
						target: aMLBRemoteVariable;
						toAssignate: self;
						yourself.
	P3GInterpreter current
		executePythonCode: assignment generate.
	^ aMLBRemoteVariable
]
