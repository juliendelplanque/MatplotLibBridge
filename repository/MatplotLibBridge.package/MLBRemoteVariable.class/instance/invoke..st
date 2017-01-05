invocation
invoke: aMLBFunctionInvocation
	^ aMLBFunctionInvocation copy
			target: self name;
			executeAndStoreIn: self class new