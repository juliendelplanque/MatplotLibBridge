"
I model the style of a line to be used in a plot.
"
Class {
	#name : #MLBLineStyle,
	#superclass : #MLBStyle,
	#category : #'MatplotLibBridge-Core'
}

{ #category : #accessing }
MLBLineStyle class >> validStyleStrings [
	^ #('solid' 'dashed' 'dashdot' 'dotted' '-' '--' '-.' ':' 'None' ' ' '')
]

{ #category : #converting }
MLBLineStyle >> asMLBLineStyle [
	^ self
]
