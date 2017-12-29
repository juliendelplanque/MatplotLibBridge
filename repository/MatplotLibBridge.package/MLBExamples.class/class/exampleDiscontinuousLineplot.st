examples
exampleDiscontinuousLineplot
	"If you create points having 'Float nan' as x or y, it allows to create discontinuous lines."
	MLBLinePlot new
		addLine: [ :line |
			line
				points: ((-10 to: -0) collect: [ :i | i@1 negated ]) , { 0@Float nan } , ((0 to: 10) collect: [ :i | i@1 ]);
				label: 'Discontinous line';
				color: Color red ];
		addLine: [ :line |
			line
				points: ((-10 to: -0) collect: [ :i | i@0.5 negated ]) , ((0 to: 10) collect: [ :i | i@0.5 ]);
				label: 'Continous line';
				color: Color blue ];
		show