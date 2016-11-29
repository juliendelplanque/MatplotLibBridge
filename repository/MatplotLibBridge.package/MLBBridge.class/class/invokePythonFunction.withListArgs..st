commands
invokePythonFunction: functionName withListArgs: aListOfString
	Atlas sendMessage: (self buildPythonFunctionInvocation: functionName withListArgs: aListOfString)