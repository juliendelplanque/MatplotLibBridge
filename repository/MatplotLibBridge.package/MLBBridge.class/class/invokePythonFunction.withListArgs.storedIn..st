commands
invokePythonFunction: functionName withListArgs: aListOfString storedIn: aMLBRemoveVariable
	self executePythonCode:  aMLBRemoveVariable name , '=' , (self buildPythonFunctionInvocation: functionName withListArgs: aListOfString)