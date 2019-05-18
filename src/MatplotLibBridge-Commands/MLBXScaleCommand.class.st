"
I am a wrapper for the matplotlib.pyplot.xscale function.
"
Class {
	#name : #MLBXScaleCommand,
	#superclass : #MLBPyplotCommand,
	#instVars : [
		'scale'
	],
	#category : #'MatplotLibBridge-Commands-Core'
}

{ #category : #accessing }
MLBXScaleCommand >> functionName [
	^ 'xscale'
]

{ #category : #accessing }
MLBXScaleCommand >> scale [
	<mlbAttribute: 1>
	^ scale
]

{ #category : #accessing }
MLBXScaleCommand >> scale: anObject [
	scale := anObject
]
