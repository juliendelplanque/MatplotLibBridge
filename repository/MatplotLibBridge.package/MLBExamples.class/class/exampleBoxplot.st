examples
exampleBoxplot
	MLBBoxPlot new
		dataList: {((1 to: 100) collect: [ :i | (1 to: 10) atRandom ])};
		beHorizontal;
		configXAxis: [ :xAxis|
			xAxis
				labels: #('Data');
				min: 0;
				max: 11 ];
		show