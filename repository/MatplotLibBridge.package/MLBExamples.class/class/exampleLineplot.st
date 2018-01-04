examples
exampleLineplot
	<mlbExampleNumber: 1 named: 'Creating a line plot' description: 'The following code snippet creates a line plot for the factorial function between 0 and 10. It also illustrates that it is possible to use LaTeX code as marker for the points. Using `#label:` message allows to give name to the line that will be displayed in a corner of the plot.'>
	MLBLinePlot new
		addPointsLine: [ :line | 
			line
				points: ((0 to: 10) collect: [ :i | i @ i factorial ]);
				marker: '$\triangledown$';
				label: 'Factorial' ];
		show