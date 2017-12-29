examples
exampleLegend
	| interval |
	interval := 1 to: 1000.
	MLBLinePlot new
		lines:
			{(MLBLine points: (interval collect: [ :i | i @ i sqrt ]))
				color: Color green;
				label: '$\sqrt[2]{x}$';
				yourself.
			(MLBLine points: (interval collect: [ :i | i @ (i nthRoot: 3) ]))
				color: Color red;
				label: '$\sqrt[3]{x}$';
				yourself.
			(MLBLine new points: (interval collect: [ :i | i @ (i nthRoot: 4) ]))
				color: Color blue;
				label: '$\sqrt[4]{x}$';
				yourself.
			(MLBLine points: (interval collect: [ :i | i @ i log ]))
				label: '$log(x)$';
				yourself.};
		configXAxis: [ :axis | axis min: 0 ];
		configYAxis: [ :axis | axis min: 0 ];
		addLegend;
		show