examples
exampleLogscaleLineplot
	<mlbExampleNumber: 2.3 named: 'Set an axis to be in logarithmic scale' description: 'Calling the method `#logScale` in #configYAxis block makes the scale of the concerned axis logarithmic. Other scales are available, see `MLBAbstractAxis>>validScales`.'>
	MLBLinePlot new
		addPointsLine: [ :line | 
			line
				points: ((0 to: 100) collect: [ :i | i @ i exp ]);
				label: 'exp(x)' ];
		configYAxis: [ :yAxis |
			yAxis logScale ];
		show