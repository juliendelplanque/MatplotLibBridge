"
I am a high-level object to draw box plot from matplotlib.
"
Class {
	#name : #MLBBoxPlot,
	#superclass : #MLBAbstractPlot,
	#instVars : [
		'dataList',
		'labels',
		'vertical'
	],
	#category : #'MatplotLibBridge-API'
}

{ #category : #example }
MLBBoxPlot class >> exampleHorizontal [
	MLBExamples exampleHorizontalBoxplot
]

{ #category : #example }
MLBBoxPlot class >> exampleVertical [
	MLBExamples exampleVerticalBoxplot
]

{ #category : #setting }
MLBBoxPlot >> beHorizontal [
	self vertical: false
]

{ #category : #setting }
MLBBoxPlot >> beVertical [
	self vertical: true
]

{ #category : #accessing }
MLBBoxPlot >> dataList [
	^ dataList
]

{ #category : #accessing }
MLBBoxPlot >> dataList: anObject [
	dataList := anObject
]

{ #category : #building }
MLBBoxPlot >> inBuild [
	self isVertical
		ifTrue: [ 
			self configXAxis: [ :x | x ticks: (1 to: x labels size) ] ]
		ifFalse: [ 
			self configYAxis: [ :y | y ticks: (1 to: y labels size) ] ].
	self commandList
		add: (MLBBoxplotCommand new
					x: self dataList;
					labels: self labels;
					vert: self vertical;
					yourself)
]

{ #category : #initialization }
MLBBoxPlot >> initialize [
	super initialize.
	self beVertical
]

{ #category : #testing }
MLBBoxPlot >> isHorizontal [
	^ self isVertical not
]

{ #category : #testing }
MLBBoxPlot >> isVertical [
	^ self vertical
]

{ #category : #accessing }
MLBBoxPlot >> labels [
	^ labels
]

{ #category : #accessing }
MLBBoxPlot >> labels: anObject [
	labels := anObject
]

{ #category : #accessing }
MLBBoxPlot >> vertical [
	^ vertical
]

{ #category : #accessing }
MLBBoxPlot >> vertical: anObject [
	vertical := anObject
]
