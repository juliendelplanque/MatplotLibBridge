commands
invokePythonFunction: functionName withDictArgs: aDictionary
	self executePythonCode: (self buildPythonFunctionInvocation: functionName withDictArgs: aDictionary)