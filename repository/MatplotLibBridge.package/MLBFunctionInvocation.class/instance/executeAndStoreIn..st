executing
executeAndStoreIn: aMLBRemoteVariable
	| assignment |
	assignment := MLBAssignment new
						target: aMLBRemoteVariable;
						toAssignate: self;
						yourself.
	self bridge
		executePythonCode: assignment generate.
	^ aMLBRemoteVariable