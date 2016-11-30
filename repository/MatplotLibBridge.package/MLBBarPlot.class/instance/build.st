building
build
	MLBBar new
		left: (0 to: self data size - 1);
		height: self data;
		tick_label: self labels;
		color: '#',self color asHexString;
		executeUsingBridge: self bridge.
	super build