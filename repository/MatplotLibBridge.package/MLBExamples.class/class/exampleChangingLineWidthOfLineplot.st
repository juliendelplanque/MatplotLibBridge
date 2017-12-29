examples
exampleChangingLineWidthOfLineplot
	MLBLinePlot new
		addLine: [ :line |
			line
				points: ((0 to: 10) collect: [ :i | i@i ]);
				width: 5;
				color: Color blue ];
		addLine: [ :line |
			line
				points: ((0 to: 10) collect: [ :i | i@(i*2) ]);
				width: 3;
				color: Color red ];
		addLine: [ :line | "#width = 1 if not specified."
			line
				points: ((0 to: 10) collect: [ :i | i@(i*3) ]);
				color: Color green ];
		show