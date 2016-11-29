commands
invokePythonFunction: functionName withDictArgs: aDictionary
	Atlas sendMessage: (self buildPythonFunctionInvocation: functionName withDictArgs: aDictionary)