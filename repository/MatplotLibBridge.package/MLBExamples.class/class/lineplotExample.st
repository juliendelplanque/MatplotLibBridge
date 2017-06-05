examples
lineplotExample
	| x y |
	x := (1 to: 50 by: 2) asArray.
	y := x collect: [ :i | i ** 2 ].

	MLBLinePlot new
		x: x;
		y: y;
		lineStyle: 'None';
		marker: '$\alpha$';
		color: Color green;
		alpha: 0.75;
		show