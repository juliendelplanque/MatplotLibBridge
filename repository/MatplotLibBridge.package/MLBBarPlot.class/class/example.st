example
example
	| menMeans womenMeans menStd womenStd data std |
	menMeans := #(20 35 30 35 27).
	womenMeans := #(25 32 34 20 25).
	menStd := #(2 3 4 1 2).
	womenStd := #(3 5 2 3 3).
	
	data := (1 to: menMeans size) collect: [ :i |
				{ menMeans at: i. womenMeans at: i } ].
	std := (1 to: menStd size) collect: [ :i |
				{ menStd at: i. womenStd at: i } ].
	MLBBarPlot new
		data: data;
		labels: #('G1' 'G2' 'G3' 'G4' 'G5');
		color: {Color blue. Color pink};
		labelsRotation: 45;
		title: 'Scores by group and gender';
		yAxisTitle: 'Scores';
		errorBar: std;
		errorBarColor: { Color black . Color black };
		alignLabelCenter;
		show.