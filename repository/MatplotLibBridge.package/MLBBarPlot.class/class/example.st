example
example
	| data std |
	data := #(20 35 30 35 27).
	std := #(2 3 4 1 2).
	
	MLBBridge importPyplot.
	MLBBarPlot new
		data: data;
		labels: #('G1' 'G2' 'G3' 'G4' 'G5');
		color: Color blue;
		labelsRotation: 45;
		title: 'Scores by group and gender';
		yAxisTitle: 'Scores';
		errorBars: std;
		errorBarsColor: Color black;
		alignLabelCenter;
		show.