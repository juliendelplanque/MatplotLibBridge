examples
exampleLegend
	<mlbExampleNumber: 8 named: 'Using LaTeX in legend' description: 'The following code snippet shows you how to create a line plot with LaTeX code for lines'' labels. In fact, with MatplotLibBridge, you can use LaTeX in any String you provide.'>
	| interval |
	interval := 1 to: 1000.
	MLBLinePlot new
		addPointsLine: [ :line |
			line
				points: (interval collect: [ :i | i @ i sqrt ]);
				color: Color green;
				label: '$\sqrt[2]{x}$' ];
		addPointsLine: [ :line |
			line
				points: (interval collect: [ :i | i @ (i nthRoot: 3) ]);
				color: Color red;
				label: '$\sqrt[3]{x}$' ];
		addPointsLine: [ :line |
			line
				points: (interval collect: [ :i | i @ (i nthRoot: 4) ]);
				color: Color blue;
				label: '$\sqrt[4]{x}$' ];
		addPointsLine: [ :line |
			line
				points: (interval collect: [ :i | i @ i log ]);
				label: '$log(x)$' ];
		configXAxis: [ :axis | axis min: 0 ];
		configYAxis: [ :axis | axis min: 0 ];
		addLegend;
		show