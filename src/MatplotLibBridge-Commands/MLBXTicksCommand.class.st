"
I am a wrapper for the matplotlib.pyplot.xticks function.
"
Class {
	#name : #MLBXTicksCommand,
	#superclass : #MLBPyplotCommand,
	#instVars : [
		'ticks',
		'labels',
		'rotation'
	],
	#category : #'MatplotLibBridge-Commands-Core'
}

{ #category : #accessing }
MLBXTicksCommand >> functionName [
	^ 'xticks'
]

{ #category : #accessing }
MLBXTicksCommand >> labels [
	<mlbAttribute: 2>
	^ labels
]

{ #category : #accessing }
MLBXTicksCommand >> labels: anObject [
	labels := anObject
]

{ #category : #accessing }
MLBXTicksCommand >> rotation [
	<mlbAttribute>
	^ rotation
]

{ #category : #accessing }
MLBXTicksCommand >> rotation: anObject [
	rotation := anObject
]

{ #category : #accessing }
MLBXTicksCommand >> ticks [
	<mlbAttribute: 1>
	^ ticks
]

{ #category : #accessing }
MLBXTicksCommand >> ticks: anObject [
	ticks := anObject
]
