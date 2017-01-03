commands
invokePythonFunction: functionName withListArgs: aListOfString dictArgs: aDictionary
	self executePythonCode: (self buildPythonFunctionInvocation: functionName withListArgs: aListOfString dictArgs: aDictionary)