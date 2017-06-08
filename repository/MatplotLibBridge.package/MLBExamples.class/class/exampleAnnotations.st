examples
exampleAnnotations
	MLBLinePlot new
		addLine: [ :line |
			line
				points: ((1 to: 50 by: 2) collect: [ :i | i@(i**3) ]);
				style: 'solid';
				marker: 'None';
				color: (Color r: 0 g: 0 b: 0 alpha: 0.3) ];
		addAnnotation: [ :annotation |
			annotation
				content: 'a thing';
				position: 10 @(10**3);
				textPosition: 10 @(10**4);
				arrowProperties: {('arrowstyle' -> '<|-')} asDictionary ];
		addAnnotation: [ :annotation |
			annotation
				content: 'another thing';
				position: 30 @ (30 ** 3);
				textPosition: 35 @ (30 ** 3 + 10);
				arrowProperties:
					{('facecolor' -> 'black').
					('shrink' -> 4) } asDictionary ];
		show