tests-building
testBuildInvocationOn4
	| invocation string |
	invocation := MLBFunctionInvocation new
						functionName: 'fct';
						keywordArguments: { 'hello' -> 1. 'key2' -> 42.42 } asDictionary;
						yourself.
	string := String streamContents: [ :s | invocation buildInvocationOn: s ].
	self assert: string equals: 'fct(hello=1,key2=42.42)'