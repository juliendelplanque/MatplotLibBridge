building
preBuild
	self commandList add: MLBClfCommand new.
	style ifNotNil: [ 
		self commandList add: style ]