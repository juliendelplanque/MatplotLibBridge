"
I am a wrapper for the matplotlib.pyplot.ylabel function.
"
Class {
	#name : #MLBYLabelCommand,
	#superclass : #MLBPyplotCommand,
	#instVars : [
		's'
	],
	#category : #'MatplotLibBridge-Commands-Core'
}

{ #category : #accessing }
MLBYLabelCommand >> functionName [
	^ 'ylabel'
]

{ #category : #accessing }
MLBYLabelCommand >> s [
	<mlbAttribute>
	^ s
]

{ #category : #accessing }
MLBYLabelCommand >> s: anObject [
	s := anObject
]
