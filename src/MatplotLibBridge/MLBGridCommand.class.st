"
I am a wrapper for the matplotlib.pyplot.legend function.

My implementation is not complete yet.
"
Class {
	#name : #MLBGridCommand,
	#superclass : #MLBPyplotCommand,
	#instVars : [
		'axis'
	],
	#category : 'MatplotLibBridge-Commands'
}

{ #category : #accessing }
MLBGridCommand >> axis [
	<mlbAttribute>
	^ axis
]

{ #category : #accessing }
MLBGridCommand >> axis: anObject [
	axis := anObject
]

{ #category : #accessing }
MLBGridCommand >> functionName [
	^ 'grid'
]
