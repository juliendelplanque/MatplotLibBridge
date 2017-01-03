example
example
	| x y |
	x := (1 to: 100) asArray.
	y := x collect: [ :i | i ** 2 ].
	MLBLinePlot new
		x: x;
		y: y;
		lineStyle: '-';
		marker: 'o';
		show