examples
exampleAnnotations
	| x y |
	x := (1 to: 50 by: 2) asArray.
	y := x collect: [ :i | i ** 3 ].
	MLBLinePlot new
		x: x;
		y: y;
		lineStyle: 'solid';
		marker: 'None';
		color: Color black;
		alpha: 0.75;
		addAnnotation:
			(MLBAnnotation new
				content: 'a thing';
				position: 10 @(10**3);
				textPosition: 10 @(10**4);
				arrowProperties: {('arrowstyle' -> '<|-')} asDictionary;
				yourself);
		addAnnotation:
			(MLBAnnotation new
				content: 'another thing';
				position: 30 @ (30 ** 3);
				textPosition: 35 @ (30 ** 3 + 10);
				arrowProperties:
					{('facecolor' -> 'black').
					('shrink' -> 4)} asDictionary;
				yourself);
		show