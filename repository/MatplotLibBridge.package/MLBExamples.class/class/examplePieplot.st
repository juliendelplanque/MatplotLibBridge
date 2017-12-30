examples
examplePieplot
	<mlbExampleNumber: 6 named: 'Creating a pie plot' description: 'The following code snippet creates a pie box plot for some data that sum to 100. You can optionally add `labels:`, set the a shadow or not (`hasShadow:`), configure the `axis:` (here we want to have a round pie, so we set it to `''equal''`), explode each part of the pie at different degrees (here only the part concerning `30` data is exploded) and choose the start angle.'>
	MLBPiePlot new
		data: #(50 20 30);
		labels: #(One Two Three);
		hasShadow: false;
		axis: 'equal';
		explode: #(0 0 0.1);
		startAngle: -90;
		show