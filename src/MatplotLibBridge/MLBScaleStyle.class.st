"
I model the style of scale to be used in a plot.
"
Class {
	#name : #MLBScaleStyle,
	#superclass : #MLBStyle,
	#category : #'MatplotLibBridge-Core'
}

{ #category : #accessing }
MLBScaleStyle class >> validStyleStrings [
	^ #('linear' 'log' 'logit' 'symlog')
]

{ #category : #converting }
MLBScaleStyle >> asMLBScaleStyle [
	^ self
]
