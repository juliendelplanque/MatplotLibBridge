commands
invokePythonFunction: functionName withListArgs: aListOfString
	self executePythonCode: (self buildPythonFunctionInvocation: functionName withListArgs: aListOfString)