examples
exampleChangingLineWidthOfLineplot
	<mlbExampleNumber: 2.1 named: 'Changing line width in line plot or multi-lines plot'
	description:
		'It is possible to configure the width of each line in a line plot using `#width:`.'>
	MLBLinePlot new
		addPointsLine: [ :line | 
			line
				points: ((0 to: 10) collect: [ :i | i @ i ]);
				width: 5;
				color: Color blue ];
		addPointsLine: [ :line | 
			line
				points: ((0 to: 10) collect: [ :i | i @ (i * 2) ]);
				width: 3;
				color: Color red ];
		addPointsLine: [ :line | 
			"#width = 1 if not specified."
			line
				points: ((0 to: 10) collect: [ :i | i @ (i * 3) ]);
				color: Color green ];
		show