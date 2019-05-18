"
I model the style of a marker to be used in a plot.
"
Class {
	#name : #MLBMarkerStyle,
	#superclass : #MLBStyle,
	#category : #'MatplotLibBridge-Core'
}

{ #category : #testing }
MLBMarkerStyle class >> isValidStyleString: aString [
	^ (super isValidStyleString: aString)
			or: [ aString matchesRegex: '\$.+\$' ]
]

{ #category : #accessing }
MLBMarkerStyle class >> validStyleStrings [
	^ #('.' ',' 'o' 'v' '^' '<' '>' '1' '2' '3' '4' '8' 's' 'p' '*' 'h' 'H' '+' 'x' 'D' 'd' '|' '_' 'None' ' ' '')
]

{ #category : #converting }
MLBMarkerStyle >> asMLBMarkerStyle [
	^ self
]
