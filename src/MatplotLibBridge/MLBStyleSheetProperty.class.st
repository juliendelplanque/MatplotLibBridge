Class {
	#name : #MLBStyleSheetProperty,
	#superclass : #MLBVisitableObject,
	#instVars : [
		'groupName',
		'name',
		'value'
	],
	#category : #'MatplotLibBridge-Model'
}

{ #category : #visiting }
MLBStyleSheetProperty >> acceptVisitor: visitor [
	^ visitor visitMLBStyleSheetProperty: self
]

{ #category : #accessing }
MLBStyleSheetProperty >> groupName [
	^ groupName
]

{ #category : #accessing }
MLBStyleSheetProperty >> groupName: anObject [
	groupName := anObject
]

{ #category : #accessing }
MLBStyleSheetProperty >> name [
	^ name
]

{ #category : #accessing }
MLBStyleSheetProperty >> name: anObject [
	name := anObject
]

{ #category : #accessing }
MLBStyleSheetProperty >> value [
	^ value
]

{ #category : #accessing }
MLBStyleSheetProperty >> value: anObject [
	value := anObject
]
