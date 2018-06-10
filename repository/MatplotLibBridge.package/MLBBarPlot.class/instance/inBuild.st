building
inBuild
	self commandList
		add:
			(MLBBarCommand new
				left: (0 to: self data size - 1);
				height: self data;
				tick_label: self labels;
				color: self color;
				yerr: self errorBars;
				ecolor: self errorBarsColor;
				"Next line is due to some kind of hack in matplotlib to align labels on right edge."
				width: (alignLabelRightEdge ifTrue: [ self barWidth negated ] ifFalse: [ self barWidth ]);
				align: self align;
				log: self logAxis;
				yourself)