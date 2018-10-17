"
I am a wrapper for the matplotlib.pyplot.ylim function.
"
Class {
	#name : #MLBYLimCommand,
	#superclass : #MLBPyplotCommand,
	#instVars : [
		'ymin',
		'ymax'
	],
	#category : 'MatplotLibBridge-Commands'
}

{ #category : #accessing }
MLBYLimCommand >> functionName [
	^ 'ylim'
]

{ #category : #accessing }
MLBYLimCommand >> ymax [
	<mlbAttribute>
	^ ymax
]

{ #category : #accessing }
MLBYLimCommand >> ymax: anObject [
	ymax := anObject
]

{ #category : #accessing }
MLBYLimCommand >> ymin [
	<mlbAttribute>
	^ ymin
]

{ #category : #accessing }
MLBYLimCommand >> ymin: anObject [
	ymin := anObject
]
