"
I am a wrapper for the matplotlib.pyplot.yscale function.
"
Class {
	#name : #MLBYScaleCommand,
	#superclass : #MLBPyplotCommand,
	#instVars : [
		'scale'
	],
	#category : 'MatplotLibBridge-Commands'
}

{ #category : #accessing }
MLBYScaleCommand >> functionName [
	^ 'yscale'
]

{ #category : #accessing }
MLBYScaleCommand >> scale [
	<mlbAttribute: 1>
	^ scale
]

{ #category : #accessing }
MLBYScaleCommand >> scale: anObject [
	scale := anObject
]
