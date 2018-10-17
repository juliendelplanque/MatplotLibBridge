"
I am a wrapper for the matplotlib.pyplot.xlim function.
"
Class {
	#name : #MLBXLimCommand,
	#superclass : #MLBPyplotCommand,
	#instVars : [
		'xmin',
		'xmax'
	],
	#category : 'MatplotLibBridge-Commands'
}

{ #category : #accessing }
MLBXLimCommand >> functionName [
	^ 'xlim'
]

{ #category : #accessing }
MLBXLimCommand >> xmax [
	<mlbAttribute>
	^ xmax
]

{ #category : #accessing }
MLBXLimCommand >> xmax: anObject [
	xmax := anObject
]

{ #category : #accessing }
MLBXLimCommand >> xmin [
	<mlbAttribute>
	^ xmin
]

{ #category : #accessing }
MLBXLimCommand >> xmin: anObject [
	xmin := anObject
]
