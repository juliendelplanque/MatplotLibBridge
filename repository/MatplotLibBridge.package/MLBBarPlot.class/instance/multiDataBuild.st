building
multiDataBuild
	MLBBar new
		left: (0 to: self data size - 1);
		height: (self data collect: #first);
		tick_label: self labels;
		color: '#' , self color first asHexString;
		yerr: (self barError ifNotNil: [self barError collect: #first]);
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
			yerr: (self barError ifNotNil: [self barError collect: [ :e | e at: i ]]);
			executeUsingBridge: self bridge ]