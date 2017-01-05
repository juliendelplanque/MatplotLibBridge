tests-building
testBuildInvocationOn3
	| invocation string |
	invocation := MLBFunctionInvocation new
						functionName: 'function';
						positionalArguments: { 'positional1' . 38 };
						keywordArguments: { 'hello' -> 1. 'key2' -> 42.42 } asDictionary;
						yourself.
	string := String streamContents: [ :s | invocation buildInvocationOn: s ].
	self assert: string equals: 'function(''positional1'',38,hello=1,key2=42.42)'