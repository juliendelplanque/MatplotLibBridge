"
I am a circle used in a MLBScatterPlot.
"
Class {
	#name : #MLBCircle,
	#superclass : #Object,
	#instVars : [
		'position',
		'size',
		'color'
	],
	#category : #'MatplotLibBridge-API'
}

{ #category : #'instance creation' }
MLBCircle class >> position: aPoint [
	^ self new
		position: aPoint;
		yourself
]

{ #category : #'instance creation' }
MLBCircle class >> position: aPoint size: size [
	^ self new
		position: aPoint;
		size: size;
		yourself
]

{ #category : #accessing }
MLBCircle >> color [
	^ color
]

{ #category : #accessing }
MLBCircle >> color: anObject [
	color := anObject
]

{ #category : #initialization }
MLBCircle >> initialize [
	super initialize.
	self
		color: Color black;
		size: 5
]

{ #category : #accessing }
MLBCircle >> position [
	^ position
]

{ #category : #accessing }
MLBCircle >> position: anObject [
	position := anObject
]

{ #category : #accessing }
MLBCircle >> size [
	^ size
]

{ #category : #accessing }
MLBCircle >> size: anObject [
	size := anObject
]

{ #category : #accessing }
MLBCircle >> x [
	^ self position x
]

{ #category : #accessing }
MLBCircle >> y [
	^ self position y
]
