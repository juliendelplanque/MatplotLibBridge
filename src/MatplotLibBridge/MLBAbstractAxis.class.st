"
I am the description of an abstract axis of a plot.

I can generate the commands that allows to configure an axis for a plot.
"
Class {
	#name : #MLBAbstractAxis,
	#superclass : #MLBVisitableObject,
	#instVars : [
		'labels',
		'labelsRotation',
		'ticks',
		'max',
		'min',
		'title',
		'scale',
		'twinAxis'
	],
	#category : #'MatplotLibBridge-Model'
}

{ #category : #twin }
MLBAbstractAxis >> createTwin: aBlock [
	self twinAxis: self copy.
	aBlock value: self twinAxis
	
]

{ #category : #testing }
MLBAbstractAxis >> hasTwinAxis [
	^ self twinAxis isNotNil
]

{ #category : #initialization }
MLBAbstractAxis >> initialize [
	super initialize.
	self
		title: ''
]

{ #category : #accessing }
MLBAbstractAxis >> labels [
	^ labels
]

{ #category : #accessing }
MLBAbstractAxis >> labels: anObject [
	labels := anObject
]

{ #category : #accessing }
MLBAbstractAxis >> labelsRotation [
	^ labelsRotation
]

{ #category : #accessing }
MLBAbstractAxis >> labelsRotation: anObject [
	labelsRotation := anObject
]

{ #category : #scale }
MLBAbstractAxis >> linearScale [
	self scale: 'linear' asMLBScaleStyle
]

{ #category : #scale }
MLBAbstractAxis >> logScale [
	self scale: 'log' asMLBScaleStyle
]

{ #category : #scale }
MLBAbstractAxis >> logitScale [
	self scale: 'logit' asMLBScaleStyle
]

{ #category : #accessing }
MLBAbstractAxis >> max [
	^ max
]

{ #category : #accessing }
MLBAbstractAxis >> max: anObject [
	max := anObject
]

{ #category : #accessing }
MLBAbstractAxis >> min [
	^ min
]

{ #category : #accessing }
MLBAbstractAxis >> min: anObject [
	min := anObject
]

{ #category : #accessing }
MLBAbstractAxis >> scale [
	^ scale
]

{ #category : #accessing }
MLBAbstractAxis >> scale: anObject [
	scale := anObject asMLBScaleStyle
]

{ #category : #scale }
MLBAbstractAxis >> symlogScale [
	self scale: 'symlog' asMLBScaleStyle
]

{ #category : #accessing }
MLBAbstractAxis >> ticks [
	^ ticks
]

{ #category : #accessing }
MLBAbstractAxis >> ticks: anObject [
	ticks := anObject
]

{ #category : #accessing }
MLBAbstractAxis >> title [
	^ title
]

{ #category : #accessing }
MLBAbstractAxis >> title: anObject [
	title := anObject
]

{ #category : #accessing }
MLBAbstractAxis >> twinAxis [
	^ twinAxis
]

{ #category : #accessing }
MLBAbstractAxis >> twinAxis: anObject [
	twinAxis := anObject
]
