executing
executeAndStoreIn: aMLBRemoteVariable
	| assignment |
	assignment := MLBAssignment new
						target: aMLBRemoteVariable;
						toAssignate: self;
						yourself.
	MLBBridge current
		executePythonCode: assignment generate.
	^ aMLBRemoteVariable