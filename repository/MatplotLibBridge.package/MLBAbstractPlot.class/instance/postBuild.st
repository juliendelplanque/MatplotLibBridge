building
postBuild
	MLBTitle new
		s: self title;
		executeUsingBridge: self bridge.
	MLBXLabel new
		s: self xAxisTitle;
		executeUsingBridge: self bridge.
	MLBYLabel new
		s: self yAxisTitle;
		executeUsingBridge: self bridge.
	MLBXTicks new
		rotation: self labelsRotation;
		executeUsingBridge: self bridge.
	MLBXLim new
		xmin: self xAxisMin;
		xmax: self xAxisMax;
		executeUsingBridge: self bridge.
	MLBYLim new
		ymin: self yAxisMin;
		ymax: self yAxisMax;
		executeUsingBridge: self bridge.