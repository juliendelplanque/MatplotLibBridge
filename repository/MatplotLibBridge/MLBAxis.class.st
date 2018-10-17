"
I am a wrapper for the matplotlib.axis function.
"
Class {
	#name : #MLBAxis,
	#superclass : #MLBPyplotCommand,
	#instVars : [
		'v'
	],
	#category : #'MatplotLibBridge-Commands'
}

{ #category : #accessing }
MLBAxis >> functionName [
	^ 'axis'
]

{ #category : #accessing }
MLBAxis >> v [
	<mlbAttribute: 1>
	^ v
]

{ #category : #accessing }
MLBAxis >> v: anObject [
	v := anObject
]
