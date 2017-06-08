building
inBuild
	self lines do: [ :line |
		line generateCommandsIn: self commandList ].

	(self lines anySatisfy: #hasLabel)
		ifTrue: [ 
			self commandList
				add: MLBLegendCommand new ].
	
	(self legend isNotNil and: [ (self lines anySatisfy: #hasLabel) ])
		ifTrue: [ self legend generateCommandsIn: self commandList ]