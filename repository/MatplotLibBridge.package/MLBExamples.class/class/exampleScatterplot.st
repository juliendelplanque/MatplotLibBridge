examples
exampleScatterplot
	MLBScatterPlot new
		circles: ((1 to: 10) collect: [ :i | 
			(MLBCircle position: (1 to: 15) atRandom @ (1 to: 15) atRandom size: (20 to: 500) atRandom)
				color: Color random;
				yourself ]);
		show