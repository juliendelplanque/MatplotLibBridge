"
I am an annotation on the plot.
"
Class {
	#name : #MLBAnnotation,
	#superclass : #MLBCommandsGenerator,
	#instVars : [
		'content',
		'position',
		'textPosition',
		'arrowProperties',
		'onlyVisibleInsideAxes'
	],
	#category : #'MatplotLibBridge-API'
}

{ #category : #accessing }
MLBAnnotation >> arrowProperties [
	^ arrowProperties
]

{ #category : #accessing }
MLBAnnotation >> arrowProperties: anObject [
	arrowProperties := anObject
]

{ #category : #accessing }
MLBAnnotation >> content [
	^ content
]

{ #category : #accessing }
MLBAnnotation >> content: anObject [
	content := anObject
]

{ #category : #'command generation' }
MLBAnnotation >> generateCommandsIn: aMLBCommandList [
	self position ifNil: [ 
		MLBConfigurationUnfinished new
			object: self;
			selector: #position;
			signal ].
	self verifyArrowProperties: self arrowProperties.
	aMLBCommandList
		add: (MLBAnnotateCommand new
								s: self content;
								xy: {self position x . self position y};
								xytext: {self textPosition x . self textPosition y};
								arrowprops: self arrowProperties;
								annotation_clip: self onlyVisibleInsideAxes;
								yourself)
]

{ #category : #initialization }
MLBAnnotation >> initialize [
	super initialize.
	self
		arrowProperties: Dictionary new;
		content: '';
		onlyVisibleInsideAxes: true
]

{ #category : #accessing }
MLBAnnotation >> onlyVisibleInsideAxes [
	^ onlyVisibleInsideAxes
]

{ #category : #accessing }
MLBAnnotation >> onlyVisibleInsideAxes: anObject [
	onlyVisibleInsideAxes := anObject
]

{ #category : #accessing }
MLBAnnotation >> position [
	^ position
]

{ #category : #accessing }
MLBAnnotation >> position: anObject [
	position := anObject
]

{ #category : #accessing }
MLBAnnotation >> textPosition [
	^ textPosition
]

{ #category : #accessing }
MLBAnnotation >> textPosition: anObject [
	textPosition := anObject
]

{ #category : #verification }
MLBAnnotation >> verifyArrowProperties: aDictionary [
	(aDictionary includesKey: 'arrowstyle')
		ifFalse: [ ^ self ].
		
	(MLBConstants validArrowStyles includes: (aDictionary at: 'arrowstyle'))
		ifFalse: [ self error: 'Invalid arrow style, check MLBConstants>>#validArrowStyles.' ]
]
