"
I am a super class for all boxplot classes.
"
Class {
	#name : #MLBAbstractBarPlot,
	#superclass : #MLBAbstractPlot,
	#instVars : [
		'align',
		'barWidth',
		'logAxis',
		'labels',
		'alignLabelRightEdge'
	],
	#category : #'MatplotLibBridge-API'
}

{ #category : #accessing }
MLBAbstractBarPlot >> align [
	^ align
]

{ #category : #accessing }
MLBAbstractBarPlot >> align: anObject [
	align := anObject
]

{ #category : #alignment }
MLBAbstractBarPlot >> alignLabelCenter [
	alignLabelRightEdge := false.
	self align: 'center'
]

{ #category : #alignment }
MLBAbstractBarPlot >> alignLabelEdge [
	self
		deprecated: 'Please use #alignLabelLeftEdge instead.'
		transformWith: '`@receiver alignLabelEdge' -> '`@receiver alignLabelLeftEdge'.
	self alignLabelLeftEdge
]

{ #category : #alignment }
MLBAbstractBarPlot >> alignLabelLeftEdge [
	alignLabelRightEdge := false.
	self align: 'edge'
]

{ #category : #alignment }
MLBAbstractBarPlot >> alignLabelRightEdge [
	alignLabelRightEdge := true.
	self align: 'edge'
]

{ #category : #accessing }
MLBAbstractBarPlot >> barWidth [
	^ barWidth
]

{ #category : #accessing }
MLBAbstractBarPlot >> barWidth: anObject [
	barWidth := anObject
]

{ #category : #initialization }
MLBAbstractBarPlot >> initialize [
	super initialize.
	alignLabelRightEdge := false.
	self
		alignLabelCenter;
		barWidth: 0.35;
		logAxis: false
]

{ #category : #testing }
MLBAbstractBarPlot >> isAlignLabelRightEdge [
	^ alignLabelRightEdge
]

{ #category : #accessing }
MLBAbstractBarPlot >> labels [
	^ labels
]

{ #category : #accessing }
MLBAbstractBarPlot >> labels: anObject [
	labels := anObject
]

{ #category : #accessing }
MLBAbstractBarPlot >> logAxis [
	^ logAxis
]

{ #category : #accessing }
MLBAbstractBarPlot >> logAxis: anObject [
	logAxis := anObject
]
