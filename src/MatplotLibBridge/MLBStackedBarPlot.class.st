"
I am a high-level object to draw stacked bar plot from matplotlib.
"
Class {
	#name : #MLBStackedBarPlot,
	#superclass : #MLBAbstractBarPlot,
	#instVars : [
		'dataList',
		'colorList',
		'errorBarsList',
		'errorBarsColorList'
	],
	#category : 'MatplotLibBridge-API'
}

{ #category : #example }
MLBStackedBarPlot class >> example [
	MLBExamples exampleStackedBarplot
]

{ #category : #visiting }
MLBStackedBarPlot >> acceptVisitor: visitor [
	^ visitor visitMLBStackedBarPlot: self
]

{ #category : #building }
MLBStackedBarPlot >> buildAllButFirst [
	2 to: self dataList anyOne size do: [ :i | 
		self commandList
			add:
				(MLBBarCommand new
					left: (0 to: self dataList size - 1);
					height: (self dataList collect: [ :d | d at: i ]);
					bottom:
						(self dataList
							collect: [ :d | ((1 to: i - 1) collect: [ :j | d at: j ]) sum ]);
					color: (self colorList at: i);
					yerr:
						(self errorBarsList
							ifNotNil: [ self errorBarsList collect: [ :e | e at: i ] ]);
					ecolor:
						(self errorBarsColorList
							ifNotNil: [ (self errorBarsColorList asOrderedCollection at: i) asHexString ]);
					"Next line is due to some kind of hack in matplotlib to align labels on right edge."
					width: (alignLabelRightEdge ifTrue: [ self barWidth negated ] ifFalse: [ self barWidth ]);
					align: self align;
					yourself) ]
]

{ #category : #building }
MLBStackedBarPlot >> buildFirst [
	self commandList
		add:
			(MLBBarCommand new
				left: (0 to: self dataList size - 1);
				height: (self dataList collect: #first);
				tick_label: self labels;
				color: self colorList first;
				yerr:
					(self errorBarsList
						ifNotNil: [ self errorBarsList collect: #first ]);
				ecolor:
					(self errorBarsColorList
						ifNotNil: [ self errorBarsColorList asOrderedCollection first ]);
				"Next line is due to some kind of hack in matplotlib to align labels on right edge."
				width: (alignLabelRightEdge ifTrue: [ self barWidth negated ] ifFalse: [ self barWidth ]);
				align: self align;
				log: self logAxis;
				yourself)
]

{ #category : #accessing }
MLBStackedBarPlot >> colorList [
	^ colorList
]

{ #category : #accessing }
MLBStackedBarPlot >> colorList: anObject [
	colorList := anObject
]

{ #category : #accessing }
MLBStackedBarPlot >> dataList [
	^ dataList
]

{ #category : #accessing }
MLBStackedBarPlot >> dataList: anObject [
	dataList := anObject
]

{ #category : #accessing }
MLBStackedBarPlot >> errorBarsColorList [
	^ errorBarsColorList
]

{ #category : #accessing }
MLBStackedBarPlot >> errorBarsColorList: anObject [
	errorBarsColorList := anObject
]

{ #category : #accessing }
MLBStackedBarPlot >> errorBarsList [
	^ errorBarsList
]

{ #category : #accessing }
MLBStackedBarPlot >> errorBarsList: anObject [
	errorBarsList := anObject
]
