example
example
	MLBBoxPlot new
		dataList: {((1 to: 100) collect: [ :i | (1 to: 10) atRandom ])};
		beHorizontal;
		xAxisMin: 0;
		xAxisMax: 11;
		show