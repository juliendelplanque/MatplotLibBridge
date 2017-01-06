tests-building
testBuildInvocationOn2
	| invocation string |
	invocation := MLBFunctionInvocation new
						target: 'math';
						functionName: 'sin';
						positionalArguments: { 45 };
						yourself.
	string := String streamContents: [ :s | invocation mlbWritePythonOn: s ].
	self assert: string equals: 'math.sin(45)'