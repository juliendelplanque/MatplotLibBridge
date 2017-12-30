examples
exampleVerticalBoxplot
	<mlbExampleNumber: 5 named: 'Creating a vertical box plot' description: 'The following code snippet creates a vertical box plot for some random data. No need to call `#beVertical` since this is the default orientation of the plot.'>
	MLBBoxPlot new
		dataList: {((1 to: 100) collect: [ :i | (1 to: 10) atRandom ])};
		configXAxis: [ :xAxis|
			xAxis
				labels: #('Data') ];
		show