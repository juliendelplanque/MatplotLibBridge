commands
buildListArgs: aListOfString on: aStream
	aListOfString do: [ :arg |
		arg mlbWritePythonOn: aStream ] separatedBy: [ aStream << $, ]