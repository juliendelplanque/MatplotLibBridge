building
multiDataBuild
	MLBBar new
		left: (0 to: self data size - 1);
		height: (self data collect: #first);
		tick_label: self labels;
		color: '#' , self color first asHexString;
		executeUsingBridge: self bridge.
	2 to: self data anyOne size do: [ :i | 
		MLBBar new
			left: (0 to: self data size - 1);
			height: (self data collect: [ :d | d at: i ]);
			bottom:
				(self data
					collect: [ :d |
						((1 to: i - 1) collect: [ :j | d at: j ]) sum ]);
			color: '#' , (self color at: i) asHexString;
			executeUsingBridge: self bridge ]