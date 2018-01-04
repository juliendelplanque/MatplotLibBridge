examples
exampleLineplotYBlockLine
	<mlbExampleNumber: 1.1 named: 'Creating a line plot using Y-Block line' description: 'The following code snippet creates a line plot for the factorial function between 0 and 10 using MLBYBlockLine. It is totally equivalent to the preceding example (in the result) but this is another way to express the plot using MatplotLibBridge.'>
	MLBLinePlot new
		addYBlockLine: [ :line | 
			line
				x: (0 to: 10);
				yBlock: #factorial;
				marker: '$\triangledown$';
				label: 'Factorial' ];
		show