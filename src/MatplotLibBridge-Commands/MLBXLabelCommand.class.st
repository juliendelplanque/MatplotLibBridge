"
I am a wrapper for the matplotlib.pyplot.xlabel function.
"
Class {
	#name : #MLBXLabelCommand,
	#superclass : #MLBPyplotCommand,
	#instVars : [
		's'
	],
	#category : #'MatplotLibBridge-Commands-Core'
}

{ #category : #accessing }
MLBXLabelCommand >> functionName [
	^ 'xlabel'
]

{ #category : #accessing }
MLBXLabelCommand >> s [
	<mlbAttribute>
	^ s
]

{ #category : #accessing }
MLBXLabelCommand >> s: anObject [
	s := anObject
]
