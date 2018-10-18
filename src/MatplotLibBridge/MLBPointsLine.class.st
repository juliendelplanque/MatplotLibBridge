"
A line defined point-by-point.
"
Class {
	#name : #MLBPointsLine,
	#superclass : #MLBLine,
	#instVars : [
		'points'
	],
	#category : 'MatplotLibBridge-API'
}

{ #category : #example }
MLBPointsLine class >> example [
	"To use it in a MLBLinePlot, please use #addPointsLine: message with a block as argument
	to set-up the MLBPointsLine instance."
	^ MLBPointsLine new
		points: { 1@1 . 2@2 . 3@3 };
		yourself
]

{ #category : #example }
MLBPointsLine class >> example2 [
	"Alternative way to instantiate a MLBPointsLine. Specify x and y as separated arrays."
	^ MLBPointsLine new
		x: #(1 2 3) y: #(1 2 3);
		yourself
]

{ #category : #initialization }
MLBPointsLine >> initialize [
	super initialize.
	self
		points: #()
]

{ #category : #accessing }
MLBPointsLine >> points [
	^ points
]

{ #category : #accessing }
MLBPointsLine >> points: anObject [
	points := anObject
]

{ #category : #private }
MLBPointsLine >> x [
	^ self points collect: #x
]

{ #category : #accessing }
MLBPointsLine >> x: anArrayOfXs y: anArrayOfYs [
	self points: anArrayOfXs @ anArrayOfYs
]

{ #category : #private }
MLBPointsLine >> y [
	^ self points collect: #y
]
