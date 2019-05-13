"
I am a second implementation of a high-level object to draw scatter plot from matplotlib.

I use MLBScatterData instead of MLBCircle.

I allow to change the marker used for plotting.
"
Class {
	#name : #MLBScatterPlot2,
	#superclass : #MLBAbstractPlot,
	#instVars : [
		'data',
		'markersOrder'
	],
	#category : 'MatplotLibBridge-API'
}

{ #category : #example }
MLBScatterPlot2 class >> example [
	MLBExamples exampleScatterplot2
]

{ #category : #visiting }
MLBScatterPlot2 >> acceptVisitor: visitor [
	^ visitor visitMLBScatterPlot2: self
]

{ #category : #accessing }
MLBScatterPlot2 >> data [
	^ data
]

{ #category : #accessing }
MLBScatterPlot2 >> data: aCollectionOfMLBScatterData [
	data := aCollectionOfMLBScatterData
]

{ #category : #initialization }
MLBScatterPlot2 >> initialize [
	super initialize.
	self
		markersOrder: #()
]

{ #category : #accessing }
MLBScatterPlot2 >> markersOrder [
	^ markersOrder
]

{ #category : #accessing }
MLBScatterPlot2 >> markersOrder: anObject [
	markersOrder := anObject
]
