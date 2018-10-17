"
I am a wrapper for the matplotlib.pyplot.title function.
"
Class {
	#name : #MLBTitleCommand,
	#superclass : #MLBPyplotCommand,
	#instVars : [
		's',
		'fontdict',
		'loc'
	],
	#category : 'MatplotLibBridge-Commands'
}

{ #category : #accessing }
MLBTitleCommand >> fontdict [
	<mlbAttribute>
	^ fontdict
]

{ #category : #accessing }
MLBTitleCommand >> fontdict: anObject [
	fontdict := anObject
]

{ #category : #accessing }
MLBTitleCommand >> functionName [
	^ 'title'
]

{ #category : #accessing }
MLBTitleCommand >> loc [
	<mlbAttribute>
	^ loc
]

{ #category : #accessing }
MLBTitleCommand >> loc: anObject [
	loc := anObject
]

{ #category : #accessing }
MLBTitleCommand >> s [
	<mlbAttribute: 1>
	^ s
]

{ #category : #accessing }
MLBTitleCommand >> s: anObject [
	s := anObject
]
