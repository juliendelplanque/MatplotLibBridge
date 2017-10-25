examples
exampleHorizontalBoxplot
	MLBBoxPlot new
		dataList: {((1 to: 100) collect: [ :i | (1 to: 10) atRandom ]) . ((1 to: 100) collect: [ :i | (1 to: 10) atRandom ])};
		beHorizontal;
		configYAxis: [ :axis|
			axis
				labels: #('Data 1' 'Data 2') ];
		show