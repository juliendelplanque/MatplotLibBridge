building
preBuild
	self commandList add: MLBClfCommand new.
	style ifNotNil: [ 
		style generateCommandsIn: self commandList ]