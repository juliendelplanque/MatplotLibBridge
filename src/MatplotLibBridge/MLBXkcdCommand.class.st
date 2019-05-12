"
I am a wrapper for the matplotlib.pyplot.xkcd function.
"
Class {
	#name : #MLBXkcdCommand,
	#superclass : #MLBPyplotCommand,
	#instVars : [
		'scale',
		'length',
		'randomness'
	],
	#category : 'MatplotLibBridge-Commands'
}

{ #category : #accessing }
MLBXkcdCommand >> functionName [
	^ 'xkcd'
]

{ #category : #'as yet unclassified' }
MLBXkcdCommand >> generateCommandsIn: aMLBCommandList [
	aMLBCommandList add: self
]

{ #category : #accessing }
MLBXkcdCommand >> length [
	<mlbAttribute>
	^ length
]

{ #category : #accessing }
MLBXkcdCommand >> length: anObject [
	length := anObject
]

{ #category : #accessing }
MLBXkcdCommand >> randomness [
	<mlbAttribute>
	^ randomness
]

{ #category : #accessing }
MLBXkcdCommand >> randomness: anObject [
	randomness := anObject
]

{ #category : #accessing }
MLBXkcdCommand >> scale [
	<mlbAttribute>
	^ scale
]

{ #category : #accessing }
MLBXkcdCommand >> scale: anObject [
	scale := anObject
]
