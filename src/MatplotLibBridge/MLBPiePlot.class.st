"
I am a high-level object to draw pie plot from matplotlib.
"
Class {
	#name : #MLBPiePlot,
	#superclass : #MLBAbstractPlot,
	#instVars : [
		'data',
		'labels',
		'hasShadow',
		'explode',
		'startAngle',
		'radius',
		'isCounterClock',
		'colors'
	],
	#category : #'MatplotLibBridge-Model'
}

{ #category : #example }
MLBPiePlot class >> example [
	MLBExamples examplePieplot
]

{ #category : #visiting }
MLBPiePlot >> acceptVisitor: visitor [
	^ visitor visitMLBPiePlot: self
]

{ #category : #accessing }
MLBPiePlot >> colors [
	^ colors
]

{ #category : #accessing }
MLBPiePlot >> colors: anObject [
	colors := anObject
]

{ #category : #accessing }
MLBPiePlot >> data [
	^ data
]

{ #category : #accessing }
MLBPiePlot >> data: anObject [
	data := anObject
]

{ #category : #accessing }
MLBPiePlot >> explode [
	^ explode
]

{ #category : #accessing }
MLBPiePlot >> explode: anObject [
	explode := anObject
]

{ #category : #accessing }
MLBPiePlot >> hasShadow [
	^ hasShadow
]

{ #category : #accessing }
MLBPiePlot >> hasShadow: anObject [
	hasShadow := anObject
]

{ #category : #initialization }
MLBPiePlot >> initialize [
	super initialize.
	self
		hasShadow: false;
		isCounterClock: true
]

{ #category : #accessing }
MLBPiePlot >> isCounterClock [
	^ isCounterClock
]

{ #category : #accessing }
MLBPiePlot >> isCounterClock: anObject [
	isCounterClock := anObject
]

{ #category : #accessing }
MLBPiePlot >> labels [
	^ labels
]

{ #category : #accessing }
MLBPiePlot >> labels: anObject [
	labels := anObject
]

{ #category : #accessing }
MLBPiePlot >> radius [
	^ radius
]

{ #category : #accessing }
MLBPiePlot >> radius: anObject [
	radius := anObject
]

{ #category : #accessing }
MLBPiePlot >> startAngle [
	^ startAngle
]

{ #category : #accessing }
MLBPiePlot >> startAngle: anObject [
	startAngle := anObject
]
