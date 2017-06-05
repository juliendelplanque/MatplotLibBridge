command generation
generateCommandsIn: aMLBCommandList
	self position ifNil: [ 
		MLBConfigurationUnfinished new
			object: self;
			selector: #position;
			signal ].
	aMLBCommandList
		add: (MLBAnnotateCommand new
								s: self content;
								xy: {self position x . self position y};
								xytext: {self textPosition x . self textPosition y};
								arrowprops: self arrowProperties;
								annotation_clip: self onlyVisibleInsideAxes;
								yourself)