commands
buildPythonFunctionInvocation: functionName withDictArgs: aDictionary
	| atlasCommand |
	atlasCommand := String streamContents: [ :stream |
		|associations|
		associations := aDictionary associations.
		stream
			<< functionName;
			<< $(.
		associations do: [ :assoc| 
			stream
				<< assoc head;
				<< $=.
			assoc tail mlbWritePythonOn: stream ] separatedBy: [ stream << $, ].
		stream
			<< $) ].
	^ atlasCommand