building
inBuild
	self commandList
		add: (MLBPieCommand new
					x: self data;
					labels: self labels;
					shadow: self hasShadow;
					explode: self explode;
					startangle: self startAngle;
					radius: self radius;
					counterclock: self isCounterClock;
					colors: self colors;
					yourself)