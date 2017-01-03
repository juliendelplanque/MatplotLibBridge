commands
buildDictArgs: aDictionary on: aStream
	|associations|
	associations := aDictionary associations.
	associations do: [ :assoc| 
		aStream
			<< assoc head;
			<< $=.
		assoc tail mlbWritePythonOn: aStream ] separatedBy: [ aStream << $, ].