commands
buildPythonFunctionInvocation: functionName withListArgs: aListOfString
	| atlasCommand |
	atlasCommand := String streamContents: [ :stream |
		stream
			<< functionName;
			<< $(.
		self buildListArgs: aListOfString on: stream.
		stream
			<< $) ].
	^ atlasCommand