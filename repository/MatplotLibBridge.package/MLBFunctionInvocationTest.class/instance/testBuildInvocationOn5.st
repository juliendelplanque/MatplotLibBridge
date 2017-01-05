tests-building
testBuildInvocationOn5
	| invocation |
	invocation := MLBFunctionInvocation new
						functionName: 'fct';
						keywordArguments: { 1 -> 'badkey'. 'key2' -> 42.42 } asDictionary;
						yourself.
	self should: [ String streamContents: [ :s | invocation buildInvocationOn: s ] ] raise: Error.