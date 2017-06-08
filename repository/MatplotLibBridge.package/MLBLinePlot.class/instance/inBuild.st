building
inBuild
	self lines do: [ :line |
		line generateCommandsIn: self commandList ]