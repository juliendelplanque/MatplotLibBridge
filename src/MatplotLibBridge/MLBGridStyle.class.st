"
I model the style of grid to be used in a plot.
"
Class {
	#name : #MLBGridStyle,
	#superclass : #MLBStyle,
	#category : #'MatplotLibBridge-Core'
}

{ #category : #accessing }
MLBGridStyle class >> validStyleStrings [
	^ #('both' 'x' 'y')
]

{ #category : #converting }
MLBGridStyle >> asMLBGridStyle [
	^ self
]
