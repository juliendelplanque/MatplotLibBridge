building
postBuild
	| xticks |
	MLBTitle new
		s: self title;
		fontdict: self titleFontDict;
		executeUsingBridge: self bridge.
	MLBXLabel new
		s: self xAxisTitle;
		executeUsingBridge: self bridge.
	MLBYLabel new
		s: self yAxisTitle;
		executeUsingBridge: self bridge.
	xticks := MLBXTicks new
					rotation: self labelsRotation;
					yourself.
	self xLabels ifNotNil: [ 
		xticks
			ticks: (self xTicks ifNil: [(0 to: self xLabels size - 1) asArray]);
			labels: self xLabels ].
	xticks executeUsingBridge: self bridge.
	MLBXLim new
		xmin: self xAxisMin;
		xmax: self xAxisMax;
		executeUsingBridge: self bridge.
	MLBYLim new
		ymin: self yAxisMin;
		ymax: self yAxisMax;
		executeUsingBridge: self bridge.