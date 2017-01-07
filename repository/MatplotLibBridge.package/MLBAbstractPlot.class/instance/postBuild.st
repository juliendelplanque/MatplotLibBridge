building
postBuild
	| xticks |
	self commandList
		addAll:
			{(MLBTitle new
				s: self title;
				fontdict: self titleFontDict;
				loc: self titleLocation;
				yourself).
			(MLBXLabel new
				s: self xAxisTitle;
				yourself).
			(MLBYLabel new
				s: self yAxisTitle;
				yourself)}.
	xticks := MLBXTicks new
		rotation: self labelsRotation;
		yourself.
	self xLabels
		ifNotNil: [ xticks
				ticks: (self xTicks ifNil: [ (0 to: self xLabels size - 1) asArray ]);
				labels: self xLabels ].
	self commandList add: xticks.
	self commandList
		addAll:
			{(MLBXLim new
				xmin: self xAxisMin;
				xmax: self xAxisMax;
				yourself).
			(MLBYLim new
				ymin: self yAxisMin;
				ymax: self yAxisMax;
				yourself)}