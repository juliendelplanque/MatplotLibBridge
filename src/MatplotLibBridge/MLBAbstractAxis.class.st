"
I am the description of an abstract axis of a plot.

I can generate the commands that allows to configure an axis for a plot.
"
Class {
	#name : #MLBAbstractAxis,
	#superclass : #MLBCommandsGenerator,
	#instVars : [
		'labels',
		'labelsRotation',
		'ticks',
		'max',
		'min',
		'title',
		'scale'
	],
	#category : 'MatplotLibBridge-API'
}

{ #category : #testing }
MLBAbstractAxis class >> isValidScale: aString [
	^ self validScales includes: aString
]

{ #category : #accessing }
MLBAbstractAxis class >> validScales [
	^ #('linear' 'log' 'logit' 'symlog')
]

{ #category : #'command generation' }
MLBAbstractAxis >> generateCommandsIn: aMLBCommandList [
	|tempTicks|
	aMLBCommandList
		add: (self labelCommandClass new
					s: self title;
					yourself).
	tempTicks := self ticksCommandClass new
					rotation: self labelsRotation;
					yourself.
	self labels ifNotNil: [ 
		tempTicks
			ticks: (self ticks ifNil: [ (0 to: self labels size - 1) asArray ]);
			labels: self labels ].
	aMLBCommandList
		add: tempTicks.
	self scale ifNotNil: [ 
		aMLBCommandList
			add: (self scaleCommandClass new
						scale: self scale;
						yourself) ]
]

{ #category : #initialization }
MLBAbstractAxis >> initialize [
	super initialize.
	self
		title: ''
]

{ #category : #private }
MLBAbstractAxis >> labelCommandClass [
	^ self subclassResponsibility
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

{ #category : #private }
MLBAbstractAxis >> limCommandClass [
	^ self subclassResponsibility
]

{ #category : #scale }
MLBAbstractAxis >> linearScale [
	self scale: 'linear'
]

{ #category : #scale }
MLBAbstractAxis >> logScale [
	self scale: 'log'
]

{ #category : #scale }
MLBAbstractAxis >> logitScale [
	self scale: 'logit'
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
MLBAbstractAxis >> scale: aString [
	(self class isValidScale: aString)
		ifFalse: [ self error: ('Invalid scale: {1}' format: { aString }) ].
	
	scale := aString
]

{ #category : #private }
MLBAbstractAxis >> scaleCommandClass [
	^ self subclassResponsibility
]

{ #category : #scale }
MLBAbstractAxis >> symlogScale [
	self scale: 'symlog'
]

{ #category : #accessing }
MLBAbstractAxis >> ticks [
	^ ticks
]

{ #category : #accessing }
MLBAbstractAxis >> ticks: anObject [
	ticks := anObject
]

{ #category : #private }
MLBAbstractAxis >> ticksCommandClass [
	^ self subclassResponsibility
]

{ #category : #accessing }
MLBAbstractAxis >> title [
	^ title
]

{ #category : #accessing }
MLBAbstractAxis >> title: anObject [
	title := anObject
]
