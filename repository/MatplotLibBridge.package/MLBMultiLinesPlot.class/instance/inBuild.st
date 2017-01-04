building
inBuild
	1 to: self x anyOne size do: [ :i |
			MLBPlot new
				x: (self x collect: [ :array | array at: i ]);
				y: (self y collect: [ :array | array at: i ]);
				color: (self colors ifNotNil: [ self colors at: i ]);
				linestyle: (self lineStyles ifNotNil: [ self lineStyles at: i ]);
				marker: (self markers ifNotNil: [ self markers at: i ]);
				executeUsingBridge: self bridge ]