examples
exampleVerticalBoxplot
	MLBBoxPlot new
		dataList: {((1 to: 100) collect: [ :i | (1 to: 10) atRandom ])};
		configXAxis: [ :xAxis|
			xAxis
				labels: #('Data') ];
		show