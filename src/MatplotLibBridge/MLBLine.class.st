"
I represent an abstract 2-dimensions line. I am used by certain kind of plots (e.g. MLBLinePlot).
"
Class {
	#name : #MLBLine,
	#superclass : #MLBCommandsGenerator,
	#instVars : [
		'style',
		'marker',
		'color',
		'label',
		'width'
	],
	#category : #'MatplotLibBridge-API'
}

{ #category : #'instance creation' }
MLBLine class >> points: aListOfPoints [
	^ self new
		points: aListOfPoints;
		yourself
]

{ #category : #visiting }
MLBLine >> acceptVisitor: visitor [
	^ visitor visitMLBLine: self
]

{ #category : #private }
MLBLine >> alpha [
	^ self color alpha
]

{ #category : #accessing }
MLBLine >> color [
	^ color
]

{ #category : #accessing }
MLBLine >> color: anObject [
	color := anObject
]

{ #category : #private }
MLBLine >> colorHexString [
	^ '#' , self color asHexString
]

{ #category : #'command generation' }
MLBLine >> generateCommandsIn: aMLBCommandList [
	aMLBCommandList
		add:
			(MLBPlotCommand new
				x: self x;
				y: self y;
				linestyle: self style;
				marker: self marker;
				alpha: self alpha;
				color: self colorHexString;
				label: self label;
				linewidth: self width;
				yourself)
]

{ #category : #testing }
MLBLine >> hasLabel [
	^ self label isNotNil
]

{ #category : #initialization }
MLBLine >> initialize [
	super initialize.
	self
		color: Color black;
		width: 1.0
]

{ #category : #testing }
MLBLine >> isValidLineStyle: aString [
	^ self class isValidLineStyle: aString
]

{ #category : #testing }
MLBLine >> isValidMarker: aString [
	^ self class isValidMarker: aString
]

{ #category : #accessing }
MLBLine >> label [
	^ label
]

{ #category : #accessing }
MLBLine >> label: anObject [
	label := anObject
]

{ #category : #accessing }
MLBLine >> marker [
	^ marker
]

{ #category : #accessing }
MLBLine >> marker: aString [
	(MLBConstants isValidMarker: aString)
		ifFalse: [ 
			self error: MLBConstants unknownMarkerErrorMessage ].
	
	marker := aString
]

{ #category : #accessing }
MLBLine >> style [
	^ style
]

{ #category : #accessing }
MLBLine >> style: aString [
	(MLBConstants isValidLineStyle: aString)
		ifFalse: [
			self error: ('Unknown line style. Please use one of the following: {1}'
								format: { MLBConstants lineStyles fold: [ :a :b | a,',',b ] }) ].
		
		style := aString
]

{ #category : #accessing }
MLBLine >> width [
	^ width
]

{ #category : #accessing }
MLBLine >> width: anObject [
	width := anObject
]

{ #category : #private }
MLBLine >> x [
	^ self subclassResponsibility
]

{ #category : #private }
MLBLine >> y [
	^ self subclassResponsibility
]
