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

{ #category : #private }
MLBPointsLine >> y [
	^ self points collect: #y
]
