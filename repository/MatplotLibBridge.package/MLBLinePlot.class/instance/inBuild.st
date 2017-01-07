building
inBuild
	self commandList
		add:
			(MLBPlot new
				x: self x;
				y: self y;
				linestyle: self lineStyle;
				marker: self marker;
				alpha: self alpha;
				color: '#' , self color asHexString;
				yourself)