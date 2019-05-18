"
I am holding examples of use of this framework in my class side messages,
"
Class {
	#name : #MLBExamples,
	#superclass : #Object,
	#category : #'MatplotLibBridge-Examples'
}

{ #category : #samples }
MLBExamples class >> annotationsSample [
	<mlbExampleNumber: 9 named: 'Annotations' description: 'On any plot, you can add annotations. An annotation is an extra graphical element you add on your plot such as for example an arrow pointing to a certain interesting location on the plot.'>
	^ MLBLinePlot new
		addPointsLine: [ :line | 
			line
				points: ((1 to: 50 by: 2) collect: [ :i | i @ (i ** 3) ]);
				style: 'solid';
				marker: 'None';
				color:
					(Color black alpha: 0.3) ];
		addAnnotation: [ :annotation | 
			annotation
				content: 'a thing';
				position: 10 @ (10 ** 3);
				textPosition: 10 @ (10 ** 4);
				arrowProperties: {('arrowstyle' -> '<|-')} asDictionary ];
		addAnnotation: [ :annotation | 
			annotation
				content: 'another thing';
				position: 30 @ (30 ** 3);
				textPosition: 35 @ (30 ** 3 + 10);
				arrowProperties:
					{('facecolor' -> 'black').
					('shrink' -> 4)} asDictionary ];
		yourself
]

{ #category : #samples }
MLBExamples class >> barplotSample [
	<mlbExampleNumber: 3 named: 'Creating a bar plot' description: 'The following code snippet creates a bar plot for some data and to display their standard deviation. This example also illustrates how to do some basic configuration of x and y axes (`#configXAxis:` and `#configYAxis:`).'>
	|data std |
	data := #(20 35 30 35 27).
	std := #(2 3 4 1 2).
	
	^ MLBBarPlot new
		data: data;
		labels: #('G1' 'G2' 'G3' 'G4' 'G5');
		color: Color blue;
		configXAxis: [ :xAxis |
			xAxis
				labelsRotation: 45 ];
		configYAxis: [ :yAxis |
			yAxis
				title: 'Y label' ];
		title: 'Barplot example';
		errorBars: std;
		errorBarsColor: Color black;
		alignLabelCenter;
		yourself.
]

{ #category : #samples }
MLBExamples class >> changingLineWidthOfLineplotSample [
	<mlbExampleNumber: 2.1 named: 'Changing line width in line plot or multi-lines plot' description: 'It is possible to configure the width of each line in a line plot using `#width:`.'>
	^ MLBLinePlot new
		addPointsLine: [ :line | 
			line
				points: ((0 to: 10) collect: [ :i | i @ i ]);
				width: 5;
				color: Color blue ];
		addPointsLine: [ :line | 
			line
				points: ((0 to: 10) collect: [ :i | i @ (i * 2) ]);
				width: 3;
				color: Color red ];
		addPointsLine: [ :line | 
			"#width = 1 if not specified."
			line
				points: ((0 to: 10) collect: [ :i | i @ (i * 3) ]);
				color: Color green ];
		yourself
]

{ #category : #samples }
MLBExamples class >> discontinuousLineplotSample [
	<mlbExampleNumber: 2.2 named: 'Discontinuous lines in line plot or multi-lines plot' description: 'If you create points having `Float nan` as x or y, it allows to create discontinuous lines.'>
	^ MLBLinePlot new
		addPointsLine: [ :line | 
			line
				points:
					((-10 to: -0) collect: [ :i | i @ 1 negated ]) , {(0 @ Float nan)}
						, ((0 to: 10) collect: [ :i | i @ 1 ]);
				label: 'Discontinous line';
				color: Color red ];
		addPointsLine: [ :line | 
			line
				points:
					((-10 to: -0) collect: [ :i | i @ 0.5 negated ])
						, ((0 to: 10) collect: [ :i | i @ 0.5 ]);
				label: 'Continous line';
				color: Color blue ];
		yourself
]

{ #category : #examples }
MLBExamples class >> exampleAnnotations [
	self annotationsSample show
]

{ #category : #examples }
MLBExamples class >> exampleBarplot [
	self barplotSample show.
]

{ #category : #examples }
MLBExamples class >> exampleChangingLineWidthOfLineplot [
	self changingLineWidthOfLineplotSample show
]

{ #category : #examples }
MLBExamples class >> exampleDiscontinuousLineplot [
	self discontinuousLineplotSample show
]

{ #category : #examples }
MLBExamples class >> exampleHorizontalBoxplot [
	self horizontalBoxplotSample show
]

{ #category : #examples }
MLBExamples class >> exampleLegend [
	self legendSample show
]

{ #category : #examples }
MLBExamples class >> exampleLineplot [
	self lineplotSample show
]

{ #category : #examples }
MLBExamples class >> exampleLineplotYBlockLine [
	self lineplotYBlockLineSample show
]

{ #category : #examples }
MLBExamples class >> exampleLogscaleLineplot [
	self logscaleLineplotSample show
]

{ #category : #examples }
MLBExamples class >> exampleMultilineplot [
	self multilineplotSample show
]

{ #category : #examples }
MLBExamples class >> examplePieplot [
	self pieplotSample show
]

{ #category : #examples }
MLBExamples class >> exampleScatterplot [
	self scatterplotSample show
]

{ #category : #examples }
MLBExamples class >> exampleScatterplot2 [
	self scatterplot2Sample show
]

{ #category : #examples }
MLBExamples class >> exampleStackedBarplot [
	self stackedBarplotSample show
]

{ #category : #examples }
MLBExamples class >> exampleStyleSheet [
	self styleSheetSample show
]

{ #category : #examples }
MLBExamples class >> exampleVerticalBoxplot [
	self verticalBoxplotSample show
]

{ #category : #'accessing - documentation' }
MLBExamples class >> examples [
	^ self methodsWithExamplePragma collect: [ :selector |
		selector value: self ]
]

{ #category : #'accessing - documentation' }
MLBExamples class >> generateMarkdown [
	^ String streamContents: [ :stream |
		self generateMarkdownOn: stream ]
]

{ #category : #'accessing - documentation' }
MLBExamples class >> generateMarkdownOn: aStream [
	aStream
		<< '## How to use MatplotLibBridge?';
		<< Character lf;
		<< 'This page provides some examples to illustrate how to use MatplotLibBridge. For each example, the method `#show` is called when the plot is built. This method open an interactive window showing a preview of the plot. If you want to export the plot in a file, you can use `#generateIn:` which takes a `FileReference` as argument. This method creates an image file with a format corresponding to the extension of the file reference. The available formats are `.png`, `.svg` and `.pdf`. For example: `plot generateIn: ''/tmp/foo.png''` will generate the `plot` in the file `/tmp/foo.png` in png format.';
		<< Character lf;
		<< Character lf.
	self methodsWithExamplePragma
		do: [ :selector | 
			| method pragma |
			method := self class >> selector.
			pragma := method pragmaAt: self pragmaForExample.
			aStream
				<< '### ';
				<< (pragma argumentAt: 2);
				<< Character lf;
				<< (pragma argumentAt: 3);
				<< Character lf.
			self printCodeForExampleMethod: method on: aStream.
			aStream
				<< Character lf;
				<< '![';
				<< selector;
				<< '](https://raw.githubusercontent.com/juliendelplanque/MatplotLibBridge/master/plots/';
				<< selector;
				<< '.png)';
				<< Character lf;
				<< Character lf ]
]

{ #category : #'example plots generation' }
MLBExamples class >> generatePlotsForExamplesIn: aDirectoryFileReference [
	self assert: aDirectoryFileReference isDirectory.
	
	self methodsWithExamplePragma do: [ :selector |
		(selector value: self) generateIn: aDirectoryFileReference / (selector , '.png') ]
]

{ #category : #samples }
MLBExamples class >> horizontalBoxplotSample [
	<mlbExampleNumber: 4 named: 'Creating an horizontal box plot' description: 'The following code snippet creates an horizontal box plot for some random data.'>
	^ MLBBoxPlot new
		dataList: {((1 to: 100) collect: [ :i | (1 to: 10) atRandom ]) . ((1 to: 100) collect: [ :i | (1 to: 10) atRandom ])};
		beHorizontal;
		configYAxis: [ :axis|
			axis
				labels: #('Data 1' 'Data 2') ];
		yourself
]

{ #category : #samples }
MLBExamples class >> legendSample [
	<mlbExampleNumber: 8 named: 'Using LaTeX in legend' description: 'The following code snippet shows you how to create a line plot with LaTeX code for lines'' labels. In fact, with MatplotLibBridge, you can use LaTeX in any String you provide.'>
	| interval |
	interval := 1 to: 1000.
	^ MLBLinePlot new
		addPointsLine: [ :line |
			line
				points: (interval collect: [ :i | i @ i sqrt ]);
				color: Color green;
				label: '$\sqrt[2]{x}$' ];
		addPointsLine: [ :line |
			line
				points: (interval collect: [ :i | i @ (i nthRoot: 3) ]);
				color: Color red;
				label: '$\sqrt[3]{x}$' ];
		addPointsLine: [ :line |
			line
				points: (interval collect: [ :i | i @ (i nthRoot: 4) ]);
				color: Color blue;
				label: '$\sqrt[4]{x}$' ];
		addPointsLine: [ :line |
			line
				points: (interval collect: [ :i | i @ i log ]);
				label: '$log(x)$' ];
		configXAxis: [ :axis | axis min: 0 ];
		configYAxis: [ :axis | axis min: 0 ];
		addLegend;
		yourself
]

{ #category : #samples }
MLBExamples class >> lineplotSample [
	<mlbExampleNumber: 1 named: 'Creating a line plot' description: 'The following code snippet creates a line plot for the factorial function between 0 and 10. It also illustrates that it is possible to use LaTeX code as marker for the points. Using `#label:` message allows to give name to the line that will be displayed in a corner of the plot.'>
	^ MLBLinePlot new
		addPointsLine: [ :line | 
			line
				points: ((0 to: 10) collect: [ :i | i @ i factorial ]);
				marker: '$\triangledown$';
				label: 'Factorial' ];
		yourself
]

{ #category : #samples }
MLBExamples class >> lineplotYBlockLineSample [
	<mlbExampleNumber: 1.1 named: 'Creating a line plot using Y-Block line' description: 'The following code snippet creates a line plot for the factorial function between 0 and 10 using MLBYBlockLine. It is totally equivalent to the preceding example (in the result) but this is another way to express the plot using MatplotLibBridge.'>
	^ MLBLinePlot new
		addYBlockLine: [ :line | 
			line
				x: (0 to: 10);
				yBlock: #factorial;
				marker: '$\triangledown$';
				label: 'Factorial' ];
		yourself
]

{ #category : #samples }
MLBExamples class >> logscaleLineplotSample [
	<mlbExampleNumber: 2.3 named: 'Set an axis to be in logarithmic scale' description: 'Calling the method `#logScale` in #configYAxis block makes the scale of the concerned axis logarithmic. Other scales are available, see `MLBAbstractAxis>>validScales`.'>
	^ MLBLinePlot new
		addPointsLine: [ :line | 
			line
				points: ((0 to: 100) collect: [ :i | i @ i exp ]);
				label: 'exp(x)' ];
		configYAxis: [ :yAxis |
			yAxis logScale ];
		yourself
]

{ #category : #'accessing - documentation' }
MLBExamples class >> methodsWithExamplePragma [
	^ ((Pragma allNamed: self pragmaForExample in: self class) sorted: [ :a :b | (a argumentAt: 1) < (b argumentAt: 1) ] ) collect: #methodSelector
]

{ #category : #samples }
MLBExamples class >> multilineplotSample [
	<mlbExampleNumber: 2 named: 'Creating multi-lines plot' description: 'The following code snippet creates a multi-lines plot for the square root function, the third-root function and the fourth-root function between 0 and 1000. It also shows how to change the color of a line (using `#color:`) and how to change its style (using `#style:`). Available styles for a line can be accessed using `MLBLine>>#lineStyles`'>
	^ MLBLinePlot new
		addPointsLine: [ :line | line points: ((0 to: 1000) collect: [ :i | i @ i sqrt ]) ];
		addPointsLine: [ :line | 
			line
				points: ((0 to: 1000) collect: [ :i | i @ (i nthRoot: 3) ]);
				color: Color red;
				style: '--' ];
		addPointsLine: [ :line | 
			line
				points: ((0 to: 1000) collect: [ :i | i @ (i nthRoot: 4) ]);
				color: Color blue;
				style: 'dotted' ];
		yourself
]

{ #category : #samples }
MLBExamples class >> pieplotSample [
	<mlbExampleNumber: 6 named: 'Creating a pie plot' description: 'The following code snippet creates a pie box plot for some data that sum to 100. You can optionally add `labels:`, set the a shadow or not (`hasShadow:`), configure the `axis:` (here we want to have a round pie, so we set it to `''equal''`), explode each part of the pie at different degrees (here only the part concerning `30` data is exploded) and choose the start angle.'>
	^ MLBPiePlot new
		data: #(50 20 30);
		labels: #(One Two Three);
		hasShadow: false;
		axis: 'equal';
		explode: #(0 0 0.1);
		startAngle: -90;
		yourself
]

{ #category : #'accessing - documentation' }
MLBExamples class >> pragmaForExample [
	^ #mlbExampleNumber:named:description:
]

{ #category : #private }
MLBExamples class >> printCodeForExampleMethod: aCompiledMethod on: aStream [
	"Print the code concerning the example from #aCompiledMethod method on #aStream."
	
	| lines |
	lines := aCompiledMethod sourceCode lines.

	aStream
		<< '```';
		<< Character lf.
	lines allButFirst allButFirst do: [ :line |
		aStream
			<< line allButFirst; "Remove first tab character."
			<< Character lf ].
	aStream
		<< '```';
		<< Character lf.
]

{ #category : #samples }
MLBExamples class >> scatterplot2Sample [
	<mlbExampleNumber: 7.1 named: 'Creating a scatter plot (new API)' description: 'The following code snippet creates a scatter plot for some random data. The principle is to create MLBScatterData, to set them a position, a color, a size and a shape'>
	^ MLBScatterPlot2 new
		data: ((1 to: 20) collect: [ :i | 
			(MLBScatterData position: (1 to: 15) atRandom @ (1 to: 15) atRandom size: (20 to: 500) atRandom)
				color: Color random;
				marker: MLBConstants markers atRandom;
				yourself ]);
		yourself
]

{ #category : #samples }
MLBExamples class >> scatterplotSample [
	<mlbExampleNumber: 7.2 named: 'Creating a scatter plot (old API)' description: 'The following code snippet creates a scatter plot for some random data. Here we create `MLBCircle`s with a random position, a random diameter and a random color and provide them to the `MLBScatterPlot` instance.'>
	^ MLBScatterPlot new
		circles: ((1 to: 10) collect: [ :i | 
			(MLBCircle position: (1 to: 15) atRandom @ (1 to: 15) atRandom size: (20 to: 500) atRandom)
				color: Color random;
				yourself ]);
		yourself
]

{ #category : #samples }
MLBExamples class >> stackedBarplotSample [
	<mlbExampleNumber: 4 named: 'Creating a stacked bar plot' description: 'The following code snippet creates a stacked bar plot for some data and to display their standard deviation. The `#dataList` of a `MLBStackedBarPlot` should be a collection of collections of the same arity. It also shows how to rotate the labels of an axis.'>
	| menMeans womenMeans menStd womenStd data std |
	menMeans := #(20 35 30 35 27).
	womenMeans := #(25 32 34 20 25).
	menStd := #(2 3 4 1 2).
	womenStd := #(3 5 2 3 3).
	
	data := (1 to: menMeans size) collect: [ :i |
				{ menMeans at: i. womenMeans at: i } ].
	std := (1 to: menStd size) collect: [ :i |
				{ menStd at: i. womenStd at: i } ].
	
	^ MLBStackedBarPlot new
		dataList: data;
		colorList: {Color blue. Color pink};
		title: 'Scores by group and gender';
		configXAxis: [ :xAxis |
			xAxis
				labelsRotation: 45;
				labels: #('G1' 'G2' 'G3' 'G4' 'G5') ];
		configYAxis: [ :yAxis |
			yAxis
				title: 'Scores' ];
		errorBarsList: std;
		errorBarsColorList: { Color black . Color black };
		alignLabelCenter;
		yourself.
]

{ #category : #samples }
MLBExamples class >> styleSheetSample [
	<mlbExampleNumber: 10 named: 'Style sheet' description: 'MatplotLib allows to use stylesheet to reuse/change easily plot styles. The bridge actually expose this API with the `MLBStyleSheet` object. The name of properties are the same as in the python version. For more information see the official documentation of matplotlib: https://matplotlib.org/users/customizing.html.'>
	| style |
	style := MLBStyleSheet new
					setProperty: 'color' ofGroup: 'text' to: 'red';
					setProperty: 'weight' ofGroup: 'font' to: 'bold';
					yourself.
					
	^ MLBBarPlot new
		data: #(1 2 3);
		labels: #('Group 1' 'Group 2' 'Group 3');
		title: 'A title';
		style: style;
		yourself
]

{ #category : #samples }
MLBExamples class >> verticalBoxplotSample [
	<mlbExampleNumber: 5 named: 'Creating a vertical box plot' description: 'The following code snippet creates a vertical box plot for some random data. No need to call `#beVertical` since this is the default orientation of the plot.'>
	^ MLBBoxPlot new
		dataList: {((1 to: 100) collect: [ :i | (1 to: 10) atRandom ])};
		configXAxis: [ :xAxis|
			xAxis
				labels: #('Data') ];
		yourself
]
