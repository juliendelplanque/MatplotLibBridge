"
I am some data used in a MLBScatterPlot2.
"
Class {
	#name : #MLBScatterData,
	#superclass : #Object,
	#instVars : [
		'position',
		'color',
		'size',
		'marker'
	],
	#category : #'MatplotLibBridge-Model'
}

{ #category : #'instance creation' }
MLBScatterData class >> position: aPoint [
	^ self new
		position: aPoint;
		yourself
]

{ #category : #'instance creation' }
MLBScatterData class >> position: aPoint size: size [
	^ self new
		position: aPoint;
		size: size;
		yourself
]

{ #category : #accessing }
MLBScatterData >> color [
	^ color
]

{ #category : #accessing }
MLBScatterData >> color: anObject [
	color := anObject
]

{ #category : #initialization }
MLBScatterData >> initialize [
	super initialize.
	self
		color: Color black;
		size: 5;
		marker: 'o'
]

{ #category : #accessing }
MLBScatterData >> marker [
	^ marker
]

{ #category : #accessing }
MLBScatterData >> marker: anObject [
	marker := anObject asMLBMarkerStyle
]

{ #category : #accessing }
MLBScatterData >> position [
	^ position
]

{ #category : #accessing }
MLBScatterData >> position: anObject [
	position := anObject
]

{ #category : #accessing }
MLBScatterData >> size [
	^ size
]

{ #category : #accessing }
MLBScatterData >> size: anObject [
	size := anObject
]

{ #category : #accessing }
MLBScatterData >> x [
	^ self position x
]

{ #category : #accessing }
MLBScatterData >> x: aNumber [
	self position x: aNumber
]

{ #category : #accessing }
MLBScatterData >> y [
	^ self position y
]

{ #category : #accessing }
MLBScatterData >> y: aNumber [
	self position y: aNumber
]
