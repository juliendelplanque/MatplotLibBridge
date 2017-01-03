commands
invokePythonFunction: functionName withListArgs: aListOfString dictArgs: aDictionary storedIn: aMLBRemoveVariable
	self executePythonCode: aMLBRemoveVariable name , '=' , (self buildPythonFunctionInvocation: functionName withListArgs: aListOfString dictArgs: aDictionary)