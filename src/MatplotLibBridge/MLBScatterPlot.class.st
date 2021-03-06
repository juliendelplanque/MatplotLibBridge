"
I am a high-level object to draw scatter plot from matplotlib.
"
Class {
	#name : #MLBScatterPlot,
	#superclass : #MLBAbstractPlot,
	#instVars : [
		'circles',
		'marker'
	],
	#category : #'MatplotLibBridge-Model'
}

{ #category : #example }
MLBScatterPlot class >> example [
	MLBExamples exampleScatterplot
]

{ #category : #visiting }
MLBScatterPlot >> acceptVisitor: visitor [
	^ visitor visitMLBScatterPlot: self
]

{ #category : #accessing }
MLBScatterPlot >> circles [
	^ circles
]

{ #category : #accessing }
MLBScatterPlot >> circles: anObject [
	circles := anObject
]

{ #category : #private }
MLBScatterPlot >> colors [
	^ self circles collect: #color
]

{ #category : #accessing }
MLBScatterPlot >> marker [
	^ marker
]

{ #category : #accessing }
MLBScatterPlot >> marker: anObject [
	marker := anObject
]

{ #category : #private }
MLBScatterPlot >> pointSizes [
	^ self circles collect: #size
]

{ #category : #private }
MLBScatterPlot >> x [
	^ self circles collect: #x
]

{ #category : #private }
MLBScatterPlot >> y [
	^ self circles collect: #y
]
