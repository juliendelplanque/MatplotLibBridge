building
postBuild
	| xticks |
	MLBTitle new
		s: self title;
		fontdict: self titleFontDict;
		loc: self titleLocation;
		execute.
	MLBXLabel new
		s: self xAxisTitle;
		execute.
	MLBYLabel new
		s: self yAxisTitle;
		execute.
	xticks := MLBXTicks new
		rotation: self labelsRotation;
		yourself.
	self xLabels
		ifNotNil: [ xticks
				ticks: (self xTicks ifNil: [ (0 to: self xLabels size - 1) asArray ]);
				labels: self xLabels ].
	xticks execute.
	MLBXLim new
		xmin: self xAxisMin;
		xmax: self xAxisMax;
		execute.
	MLBYLim new
		ymin: self yAxisMin;
		ymax: self yAxisMax;
		execute