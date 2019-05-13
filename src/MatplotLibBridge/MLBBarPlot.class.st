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

{ #category : #visiting }
MLBBarPlot >> acceptVisitor: visitor [
	^ visitor visitMLBBarPlot: self
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

{ #category : #initialization }
MLBBarPlot >> initialize [
	super initialize.
	self
		errorBarsColor: Color black;
		color: Color gray
]
