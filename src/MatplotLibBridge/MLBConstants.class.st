"
I hold constants defined in Matplolib and that are required in multiple classes.
"
Class {
	#name : #MLBConstants,
	#superclass : #Object,
	#category : #'MatplotLibBridge-Core'
}

{ #category : #testing }
MLBConstants class >> isValidLineStyle: aString [
	^ self lineStyles includes: aString
]

{ #category : #accessing }
MLBConstants class >> isValidMarker: aString [
	^ (self markers includes: aString)
			or: [ aString matchesRegex: '\$.+\$' ]
]

{ #category : #accessing }
MLBConstants class >> lineStyles [
	^ #('solid' 'dashed' 'dashdot' 'dotted' '-' '--' '-.' ':' 'None' ' ' '')
]

{ #category : #accessing }
MLBConstants class >> markers [
	^ #('.' ',' 'o' 'v' '^' '<' '>' '1' '2' '3' '4' '8' 's' 'p' '*' 'h' 'H' '+' 'x' 'D' 'd' '|' '_' 'None' ' ' '')
]

{ #category : #accessing }
MLBConstants class >> unknownMarkerErrorMessage [
	^ 'Unknown marker, please use one of the following: {1}' format: (self markers fold: [ :m1 :m2 | m1 , ', ' , m2 ])
]

{ #category : #accessing }
MLBConstants class >> validArrowStyles [
	"The allowed values of 'arrowstyle' are:"
	^ #('-' '->' '-[' '|-|' '-|>' '<-' '<->' '<|-' '<|-|>' 'fancy' 'simple' 'wedge')
]
