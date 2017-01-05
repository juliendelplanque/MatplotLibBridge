tests-building
testBuildInvocationOn1
	| invocation string |
	invocation := MLBFunctionInvocation new
						functionName: 'print';
						positionalArguments: { 'hello' };
						yourself.
	string := String streamContents: [ :s | invocation buildInvocationOn: s ].
	self assert: string equals: 'print(''hello'')'