examples
exampleHorizontalBoxplot
	<mlbExampleNumber: 4 named: 'Creating an horizontal box plot' description: 'The following code snippet creates an horizontal box plot for some random data.'>
	MLBBoxPlot new
		dataList: {((1 to: 100) collect: [ :i | (1 to: 10) atRandom ]) . ((1 to: 100) collect: [ :i | (1 to: 10) atRandom ])};
		beHorizontal;
		configYAxis: [ :axis|
			axis
				labels: #('Data 1' 'Data 2') ];
		show