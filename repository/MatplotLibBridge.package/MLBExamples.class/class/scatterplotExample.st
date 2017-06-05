examples
scatterplotExample
	MLBScatterPlot new
		x: ((1 to: 10) collect: [ :i |(1 to: 15) atRandom ]);
		y: ((1 to: 10) collect: [ :i |(1 to: 15) atRandom ]);
		pointSizes: ((1 to: 10) collect: [ :i |(20 to: 500) atRandom ]);
		colors: ((1 to: 10) collect: [ :i | Color random ]);
		show