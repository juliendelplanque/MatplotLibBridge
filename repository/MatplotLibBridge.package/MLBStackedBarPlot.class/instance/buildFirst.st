building
buildFirst
	MLBBar new
		left: (0 to: self dataList size - 1);
		height: (self dataList collect: #first);
		tick_label: self labels;
		color: self colorList first;
		yerr: (self errorBarsList ifNotNil: [ self errorBarsList collect: #first ]);
		ecolor:
			(self errorBarsColorList
				ifNotNil: [ self errorBarsColorList asOrderedCollection first ]);
		width: self barWidth;
		align: self align;
		log: self logAxis;
		execute