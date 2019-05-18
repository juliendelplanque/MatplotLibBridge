"
I am a wrapper for the matplotlib.pyplot.yticks function.
"
Class {
	#name : #MLBYTicksCommand,
	#superclass : #MLBPyplotCommand,
	#instVars : [
		'ticks',
		'labels',
		'rotation'
	],
	#category : #'MatplotLibBridge-Commands-Core'
}

{ #category : #accessing }
MLBYTicksCommand >> functionName [
	^ 'yticks'
]

{ #category : #accessing }
MLBYTicksCommand >> labels [
	<mlbAttribute: 2>
	^ labels
]

{ #category : #accessing }
MLBYTicksCommand >> labels: anObject [
	labels := anObject
]

{ #category : #accessing }
MLBYTicksCommand >> rotation [
	<mlbAttribute>
	^ rotation
]

{ #category : #accessing }
MLBYTicksCommand >> rotation: anObject [
	rotation := anObject
]

{ #category : #accessing }
MLBYTicksCommand >> ticks [
	<mlbAttribute: 1>
	^ ticks
]

{ #category : #accessing }
MLBYTicksCommand >> ticks: anObject [
	ticks := anObject
]
