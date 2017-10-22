examples
exampleStyleSheet
	"For more information: https://matplotlib.org/users/customizing.html"
	| style |
	style := MLBStyleSheet new
					setProperty: 'labelsize' ofGroup: 'axes' to: 25;
					setProperty: 'color' ofGroup: 'text' to: 'red';
					setProperty: 'weight' ofGroup: 'font' to: 'bold';
					yourself.
					
	MLBBarPlot new
		data: #(1 2 3);
		labels: #('Group 1' 'Group 2' 'Group 3');
		title: 'A title';
		style: style;
		show