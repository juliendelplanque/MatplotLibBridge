examples
exampleScatterplot2
	<mlbExampleNumber: 7.1 named: 'Creating a scatter plot (new API)' description: 'The following code snippet creates a scatter plot for some random data. The principle is to create MLBScatterData, to set them a position, a color, a size and a shape'>
	MLBScatterPlot2 new
		data: ((1 to: 20) collect: [ :i | 
			(MLBScatterData position: (1 to: 15) atRandom @ (1 to: 15) atRandom size: (20 to: 500) atRandom)
				color: Color random;
				marker: MLBConstants markers atRandom;
				yourself ]);
		show