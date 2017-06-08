examples
exampleMultilineplot
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