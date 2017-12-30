examples
exampleMultilineplot
	<mlbExampleNumber: 2 named: 'Creating multi-lines plot' description: 'The following code snippet creates a multi-lines plot for the square root function, the third-root function and the fourth-root function between 0 and 1000. It also shows how to change the color of a line (using `#color:`) and how to change its style (using `#style:`). Available styles for a line can be accessed using `MLBLine>>#lineStyles`'>
	MLBLinePlot new
		addLine: [ :line |
			line points: ((0 to: 1000) collect: [ :i | i@i sqrt ]) ];
		addLine: [ :line |
			line
				points: ((0 to: 1000) collect: [ :i | i@(i nthRoot: 3) ]);
				color: Color red;
				style: '--' ];
		addLine: [ :line |
			line
				points: ((0 to: 1000) collect: [ :i | i@(i nthRoot: 4) ]);
				color: Color blue;
				style: 'dotted' ];
		show