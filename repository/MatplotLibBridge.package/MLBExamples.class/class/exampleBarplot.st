examples
exampleBarplot
	<mlbExampleNumber: 3 named: 'Creating a bar plot' description: 'The following code snippet creates a bar plot for the square for some data and to display their standard deviation. This example also illustrates how to do some basic configuration of x and y axes (`#configXAxis:` and `#configYAxis:`).'>
	|data std |
	data := #(20 35 30 35 27).
	std := #(2 3 4 1 2).
	
	MLBBarPlot new
		data: data;
		labels: #('G1' 'G2' 'G3' 'G4' 'G5');
		color: Color blue;
		configXAxis: [ :xAxis |
			xAxis
				labelsRotation: 45 ];
		configYAxis: [ :yAxis |
			yAxis
				title: 'Y label' ];
		title: 'Barplot example';
		errorBars: std;
		errorBarsColor: Color black;
		alignLabelCenter;
		show.