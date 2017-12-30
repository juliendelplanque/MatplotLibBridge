examples
exampleStyleSheet
	<mlbExampleNumber: 10 named: 'Style sheet' description: 'MatplotLib allows to use stylesheet to reuse/change easily plot styles. The bridge actually expose this API with the `MLBStyleSheet` object. The name of properties are the same as in the python version. For more information see the official documentation of matplotlib: https://matplotlib.org/users/customizing.html.'>
	| style |
	style := MLBStyleSheet new
					setProperty: 'color' ofGroup: 'text' to: 'red';
					setProperty: 'weight' ofGroup: 'font' to: 'bold';
					yourself.
					
	MLBBarPlot new
		data: #(1 2 3);
		labels: #('Group 1' 'Group 2' 'Group 3');
		title: 'A title';
		style: style;
		show