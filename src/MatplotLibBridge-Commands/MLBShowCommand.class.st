"
I am a wrapper for the matplotlib.pyplot.show function.
"
Class {
	#name : #MLBShowCommand,
	#superclass : #MLBPyplotCommand,
	#category : #'MatplotLibBridge-Commands-Core'
}

{ #category : #accessing }
MLBShowCommand >> functionName [
	^ 'show'
]
