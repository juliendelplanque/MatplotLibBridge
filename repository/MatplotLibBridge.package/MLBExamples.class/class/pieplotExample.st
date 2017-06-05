examples
pieplotExample
	MLBPiePlot new
		data: #(50 20 30);
		labels: #(One Two Three);
		hasShadow: true;
		axis: 'equal';
		explode: #(0 0 0.1);
		startAngle: -90;
		show