"
I am a style sheet to be applied on a plot.

I hold one or many MLBRcCommand.
"
Class {
	#name : #MLBStyleSheet,
	#superclass : #MLBVisitableObject,
	#instVars : [
		'properties'
	],
	#category : #'MatplotLibBridge-Model'
}

{ #category : #visiting }
MLBStyleSheet >> acceptVisitor: visitor [
	^ visitor visitMLBStyleSheet: self
]

{ #category : #initialization }
MLBStyleSheet >> initialize [
	super initialize.
	properties := OrderedCollection new
]

{ #category : #accessing }
MLBStyleSheet >> properties [
	^ properties
]

{ #category : #accessing }
MLBStyleSheet >> properties: anObject [
	properties := anObject
]

{ #category : #initialization }
MLBStyleSheet >> setProperty: propertyName ofGroup: groupName to: anObject [
	self properties
		add: (MLBStyleSheetProperty new
					groupName: groupName;
					name: propertyName;
					value: anObject;
					yourself)
]
