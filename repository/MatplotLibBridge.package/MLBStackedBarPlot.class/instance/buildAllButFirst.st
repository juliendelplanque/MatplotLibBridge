building
buildAllButFirst
	2 to: self dataList anyOne size do: [ :i | 
		self commandList
			add:
				(MLBBarCommand new
					left: (0 to: self dataList size - 1);
					height: (self dataList collect: [ :d | d at: i ]);
					bottom:
						(self dataList
							collect: [ :d | ((1 to: i - 1) collect: [ :j | d at: j ]) sum ]);
					color: (self colorList at: i);
					yerr:
						(self errorBarsList
							ifNotNil: [ self errorBarsList collect: [ :e | e at: i ] ]);
					ecolor:
						(self errorBarsColorList
							ifNotNil: [ (self errorBarsColorList asOrderedCollection at: i) asHexString ]);
					"Next line is due to some kind of hack in matplotlib to align labels on right edge."
					width: (alignLabelRightEdge ifTrue: [ self barWidth negated ] ifFalse: [ self barWidth ]);
					align: self align;
					yourself) ]