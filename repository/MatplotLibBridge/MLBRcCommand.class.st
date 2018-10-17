"
I am a wrapper for the matplotlib.rc.
"
Class {
	#name : #MLBRcCommand,
	#superclass : #MLBMatplotlibCommand,
	#instVars : [
		'group',
		'attributesDict',
		'labelsize',
		'titlesize'
	],
	#category : 'MatplotLibBridge-Commands'
}

{ #category : #accessing }
MLBRcCommand >> functionName [
	^ 'rc'
]

{ #category : #accessing }
MLBRcCommand >> group [
	<mlbAttribute: 1>
	^ group
]

{ #category : #accessing }
MLBRcCommand >> group: anObject [
	group := anObject
]

{ #category : #initialization }
MLBRcCommand >> initialize [
	super initialize.
	attributesDict := Dictionary new
]

{ #category : #accessing }
MLBRcCommand >> mlbAttributesDict [
	^ attributesDict
]

{ #category : #accessing }
MLBRcCommand >> setProperty: aString to: anObject [
	attributesDict at: aString put: anObject
]
