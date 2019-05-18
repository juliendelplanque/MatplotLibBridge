"
I model the style of an arrow to be used as annotation in a plot.
"
Class {
	#name : #MLBArrowStyle,
	#superclass : #MLBStyle,
	#category : #'MatplotLibBridge-Core'
}

{ #category : #accessing }
MLBArrowStyle class >> validStyleStrings [
	"The allowed values of 'arrowstyle' are:"
	^ #('-' '->' '-[' '|-|' '-|>' '<-' '<->' '<|-' '<|-|>' 'fancy' 'simple' 'wedge')
]

{ #category : #converting }
MLBArrowStyle >> asMLBArrowStyle [
	^ self
]
