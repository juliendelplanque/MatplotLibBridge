commands
buildPythonFunctionInvocation: functionName withDictArgs: aDictionary
	| atlasCommand |
	atlasCommand := String streamContents: [ :stream |
		stream
			<< functionName;
			<< $(.
		self buildDictArgs: aDictionary on: stream.
		stream
			<< $) ].
	^ atlasCommand