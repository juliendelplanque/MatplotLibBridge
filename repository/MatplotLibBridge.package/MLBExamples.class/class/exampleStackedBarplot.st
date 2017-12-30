examples
exampleStackedBarplot
	<mlbExampleNumber: 4 named: 'Creating a stacked bar plot' description: 'The following code snippet creates a stacked bar plot for some data and to display their standard deviation. The `#dataList` of a `MLBStackedBarPlot` should be a collection of collections of the same arity. It also shows how to rotate the labels of an axis.'>
	| menMeans womenMeans menStd womenStd data std |
	menMeans := #(20 35 30 35 27).
	womenMeans := #(25 32 34 20 25).
	menStd := #(2 3 4 1 2).
	womenStd := #(3 5 2 3 3).
	
	data := (1 to: menMeans size) collect: [ :i |
				{ menMeans at: i. womenMeans at: i } ].
	std := (1 to: menStd size) collect: [ :i |
				{ menStd at: i. womenStd at: i } ].
	
	MLBStackedBarPlot new
		dataList: data;
		colorList: {Color blue. Color pink};
		title: 'Scores by group and gender';
		configXAxis: [ :xAxis |
			xAxis
				labelsRotation: 45;
				labels: #('G1' 'G2' 'G3' 'G4' 'G5') ];
		configYAxis: [ :yAxis |
			yAxis
				title: 'Scores' ];
		errorBarsList: std;
		errorBarsColorList: { Color black . Color black };
		alignLabelCenter;
		show.