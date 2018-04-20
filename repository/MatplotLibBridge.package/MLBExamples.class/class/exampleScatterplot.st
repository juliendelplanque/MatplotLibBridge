examples
exampleScatterplot
	<mlbExampleNumber: 7.2 named: 'Creating a scatter plot (old API)' description: 'The following code snippet creates a scatter plot for some random data. Here we create `MLBCircle`s with a random position, a random diameter and a random color and provide them to the `MLBScatterPlot` instance.'>
	MLBScatterPlot new
		circles: ((1 to: 10) collect: [ :i | 
			(MLBCircle position: (1 to: 15) atRandom @ (1 to: 15) atRandom size: (20 to: 500) atRandom)
				color: Color random;
				yourself ]);
		show