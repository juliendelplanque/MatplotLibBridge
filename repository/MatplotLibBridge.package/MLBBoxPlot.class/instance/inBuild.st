building
inBuild
	self isVertical
		ifTrue: [ 
			self configXAxis: [ :x | x ticks: (1 to: x labels size) ] ]
		ifFalse: [ 
			self configYAxis: [ :y | y ticks: (1 to: y labels size) ] ].
	self commandList
		add: (MLBBoxplotCommand new
					x: self dataList;
					labels: self labels;
					vert: self vertical;
					yourself)