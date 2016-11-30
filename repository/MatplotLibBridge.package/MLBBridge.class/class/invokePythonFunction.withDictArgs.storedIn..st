commands
invokePythonFunction: functionName withDictArgs: aDictionary storedIn: aMLBRemoveVariable
	self executePythonCode: aMLBRemoveVariable name , '=' , (self buildPythonFunctionInvocation: functionName withDictArgs: aDictionary)