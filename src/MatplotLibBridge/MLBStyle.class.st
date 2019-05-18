"
I am an abstract style for an item in a plot.

See my subclasses for concrete examples.
"
Class {
	#name : #MLBStyle,
	#superclass : #Object,
	#instVars : [
		'styleString'
	],
	#category : #'MatplotLibBridge-Core'
}

{ #category : #checking }
MLBStyle class >> checkValidStyleString: aString [
	(self isValidStyleString: aString)
		ifFalse: [ self
				error: aString , ' is not a valid style string for ' , self name ]
]

{ #category : #testing }
MLBStyle class >> isValidStyleString: aString [
	^ self validStyleStrings includes: aString
]

{ #category : #'instance creation' }
MLBStyle class >> new [
	self error: 'Uses #styleString: to create a new instance of myself.'
]

{ #category : #'instance creation' }
MLBStyle class >> random [
	^ self styleString: self validStyleStrings atRandom
]

{ #category : #'instance creation' }
MLBStyle class >> styleString: aString [
	^ self basicNew
		styleString: aString;
		yourself
]

{ #category : #accessing }
MLBStyle class >> validStyleStrings [
	"Returns the list of strings that are valid to instantiate the object."
	^ self subclassResponsibility
]

{ #category : #accessing }
MLBStyle >> styleString [
	^ styleString
]

{ #category : #accessing }
MLBStyle >> styleString: anObject [
	self class checkValidStyleString: anObject. 
	styleString := anObject
]

{ #category : #writing }
MLBStyle >> writePython3On: aStream [
	"When we reach python code generation, this object is just serialized as a String."
	self styleString writePython3On: aStream
]
