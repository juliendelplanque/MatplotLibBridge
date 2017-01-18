building
postBuild
	| xticks |
	self commandList
		addAll:
			{(MLBTitleCommand new
				s: self title;
				fontdict: self titleFontDict;
				loc: self titleLocation;
				yourself).
			(MLBXLabelCommand new
				s: self xAxisTitle;
				yourself).
			(MLBYLabelCommand new
				s: self yAxisTitle;
				yourself)}.
	xticks := MLBXTicksCommand new
		rotation: self labelsRotation;
		yourself.
	self xLabels
		ifNotNil: [ xticks
				ticks: (self xTicks ifNil: [ (0 to: self xLabels size - 1) asArray ]);
				labels: self xLabels ].
	self commandList add: xticks.
	self commandList
		addAll:
			{(MLBXLimCommand new
				xmin: self xAxisMin;
				xmax: self xAxisMax;
				yourself).
			(MLBYLimCommand new
				ymin: self yAxisMin;
				ymax: self yAxisMax;
				yourself)}