"
I am a high-level object to draw line plot from matplotlib.
"
Class {
	#name : #MLBLinePlot,
	#superclass : #MLBAbstractPlot,
	#instVars : [
		'lines',
		'legend'
	],
	#category : #'MatplotLibBridge-API'
}

{ #category : #example }
MLBLinePlot class >> example [
	MLBExamples exampleLineplot
]

{ #category : #example }
MLBLinePlot class >> example2 [
	MLBExamples exampleMultilineplot
]

{ #category : #example }
MLBLinePlot class >> example3 [
	MLBExamples exampleDiscontinuousLineplot
]

{ #category : #example }
MLBLinePlot class >> example4 [
	MLBExamples exampleChangingLineWidthOfLineplot
]

{ #category : #adding }
MLBLinePlot >> addLegend [
	self addLegend: [ :l| ]
]

{ #category : #adding }
MLBLinePlot >> addLegend: aBlock [
	self legend: MLBLegend new.
	aBlock value: self legend
]

{ #category : #deprecated }
MLBLinePlot >> addLine: aBlock [
	self
		deprecated: 'Please use #addPointsLine: instead'
		transformWith: '`@receiver addLine: `@statements' -> '`@receiver addPointsLine: `@statements'.
	self addPointsLine: aBlock
]

{ #category : #adding }
MLBLinePlot >> addPointsLine: aBlock [
	| line |
	line := MLBPointsLine new.
	aBlock value: line.
	self lines add: line
]

{ #category : #adding }
MLBLinePlot >> addXBlockLine: aBlock [
	| line |
	line := MLBXBlockLine new.
	aBlock value: line.
	self lines add: line
]

{ #category : #adding }
MLBLinePlot >> addYBlockLine: aBlock [
	| line |
	line := MLBYBlockLine new.
	aBlock value: line.
	self lines add: line
]

{ #category : #building }
MLBLinePlot >> inBuild [
	self lines do: [ :line |
		line generateCommandsIn: self commandList ].

	(self lines anySatisfy: #hasLabel)
		ifTrue: [ 
			self commandList
				add: MLBLegendCommand new ].
	
	(self legend isNotNil and: [ (self lines anySatisfy: #hasLabel) ])
		ifTrue: [ self legend generateCommandsIn: self commandList ]
]

{ #category : #initialization }
MLBLinePlot >> initialize [
	super initialize.
	self
		lines: OrderedCollection new
]

{ #category : #accessing }
MLBLinePlot >> legend [
	^ legend
]

{ #category : #accessing }
MLBLinePlot >> legend: anObject [
	legend := anObject
]

{ #category : #accessing }
MLBLinePlot >> lines [
	^ lines
]

{ #category : #accessing }
MLBLinePlot >> lines: anObject [
	lines := anObject
]
