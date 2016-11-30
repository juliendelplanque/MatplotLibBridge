building
build
	MLBScatter new
		x: self x;
		y: self y;
		executeUsingBridge: self bridge.
	super build