commands
buildPythonFunctionInvocation: functionName withListArgs: aListOfString dictArgs: aDictionary
	| atlasCommand |
	atlasCommand := String streamContents: [ :stream |
		stream
			<< functionName;
			<< $(.
		self buildListArgs: aListOfString on: stream.
		(aListOfString isNotEmpty and: [ aDictionary isNotEmpty ])
			ifTrue: [ stream << $, ].
		self buildDictArgs: aDictionary on: stream.
		stream
			<< $) ].
	^ atlasCommand