"
I am a high-level object to draw bar plot from matplotlib.
"
Class {
	#name : #MLBBarPlot,
	#superclass : #MLBAbstractBarPlot,
	#instVars : [
		'data',
		'color',
		'errorBars',
		'errorBarsColor'
	],
	#category : #'MatplotLibBridge-API'
}

{ #category : #example }
MLBBarPlot class >> example [
	MLBExamples exampleBarplot
]

{ #category : #accessing }
MLBBarPlot >> color [
	^ color
]

{ #category : #accessing }
MLBBarPlot >> color: anObject [
	color := anObject
]

{ #category : #accessing }
MLBBarPlot >> data [
	^ data
]

{ #category : #accessing }
MLBBarPlot >> data: anObject [
	data := anObject
]

{ #category : #accessing }
MLBBarPlot >> errorBars [
	^ errorBars
]

{ #category : #accessing }
MLBBarPlot >> errorBars: anObject [
	errorBars := anObject
]

{ #category : #accessing }
MLBBarPlot >> errorBarsColor [
	^ errorBarsColor
]

{ #category : #accessing }
MLBBarPlot >> errorBarsColor: anObject [
	errorBarsColor := anObject
]

{ #category : #building }
MLBBarPlot >> inBuild [
	self commandList
		add:
			(MLBBarCommand new
				left: (0 to: self data size - 1);
				height: self data;
				tick_label: self labels;
				color: self color;
				yerr: self errorBars;
				ecolor: self errorBarsColor;
				"Next line is due to some kind of hack in matplotlib to align labels on right edge."
				width: (alignLabelRightEdge ifTrue: [ self barWidth negated ] ifFalse: [ self barWidth ]);
				align: self align;
				log: self logAxis;
				yourself)
]

{ #category : #initialization }
MLBBarPlot >> initialize [
	super initialize.
	self
		errorBarsColor: Color black;
		color: Color gray
]
