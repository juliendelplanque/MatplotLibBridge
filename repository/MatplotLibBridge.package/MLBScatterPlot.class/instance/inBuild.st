building
inBuild
	self commandList
		add:
			(MLBScatterCommand new
				x: self x;
				y: self y;
				s: self pointSizes;
				c:
					(self colors isCollection
						ifTrue: [ self colors collect: [ :c | '#' , c asHexString ] ]
						ifFalse: [ '#' , self colors asHexString ]);
				yourself)