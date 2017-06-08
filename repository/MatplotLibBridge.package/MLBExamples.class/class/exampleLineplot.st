examples
exampleLineplot
	MLBLinePlot new
		addLine: [ :line |
			line
				points: ((0 to: 10) collect: [ :i | i@i factorial ]);
				marker: '$\triangledown$' ];
		show