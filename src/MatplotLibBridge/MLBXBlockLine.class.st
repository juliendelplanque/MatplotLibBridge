"
A line defined by its y values and a block to generate x-values from y-values.
"
Class {
	#name : #MLBXBlockLine,
	#superclass : #MLBLine,
	#instVars : [
		'y',
		'xBlock'
	],
	#category : 'MatplotLibBridge-API'
}

{ #category : #private }
MLBXBlockLine >> x [
	^ self y collect: [ :data | self xBlock value: data ]
]

{ #category : #accessing }
MLBXBlockLine >> xBlock [
	^ xBlock
]

{ #category : #accessing }
MLBXBlockLine >> xBlock: anObject [
	xBlock := anObject
]

{ #category : #private }
MLBXBlockLine >> y [
	^ y
]

{ #category : #accessing }
MLBXBlockLine >> y: aSequenceableCollection [
	y := aSequenceableCollection
]
