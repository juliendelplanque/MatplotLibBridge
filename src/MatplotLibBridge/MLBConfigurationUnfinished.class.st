"
I am the error raised when the configuration of a MLB object is not finished making the command generation impossible.
"
Class {
	#name : #MLBConfigurationUnfinished,
	#superclass : #Error,
	#instVars : [
		'object',
		'selector'
	],
	#category : #'MatplotLibBridge-Errors'
}

{ #category : #accessing }
MLBConfigurationUnfinished >> messageText [
	^ '{1}>>{2} should not be nil, it has to be configured.' format: { self object class name . self selector }
]

{ #category : #accessing }
MLBConfigurationUnfinished >> object [
	^ object
]

{ #category : #accessing }
MLBConfigurationUnfinished >> object: anObject [
	object := anObject
]

{ #category : #accessing }
MLBConfigurationUnfinished >> selector [
	^ selector
]

{ #category : #accessing }
MLBConfigurationUnfinished >> selector: anObject [
	selector := anObject
]
