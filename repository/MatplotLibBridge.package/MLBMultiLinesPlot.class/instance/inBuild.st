building
inBuild
	self commandList
		addAll:
			((1 to: self x anyOne size)
				collect: [ :i | 
					MLBPlotCommand new
						x: (self x collect: [ :array | array at: i ]);
						y: (self y collect: [ :array | array at: i ]);
						color: (self colors ifNotNil: [ self colors at: i ]);
						linestyle: (self lineStyles ifNotNil: [ self lineStyles at: i ]);
						marker: (self markers ifNotNil: [ self markers at: i ]);
						alpha: (self alphas ifNotNil: [ self alphas at: i ]);
						yourself ])