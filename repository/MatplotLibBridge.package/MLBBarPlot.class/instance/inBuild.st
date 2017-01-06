building
inBuild
	MLBBar new
		left: (0 to: self data size - 1);
		height: self data;
		tick_label: self labels;
		color: self color;
		yerr: self errorBars;
		ecolor: self errorBarsColor;
		width: self barWidth;
		align: self align;
		log: self logAxis;
		execute