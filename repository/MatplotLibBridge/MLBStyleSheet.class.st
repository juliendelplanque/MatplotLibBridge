"
I am a style sheet to be applied on a plot.

I hold one or many MLBRcCommand.
"
Class {
	#name : #MLBStyleSheet,
	#superclass : #MLBCommandsGenerator,
	#instVars : [
		'rcCommands'
	],
	#category : 'MatplotLibBridge-API'
}

{ #category : #'private - adding' }
MLBStyleSheet >> addRcCommand: aMLBRcCommand [
	"Low level way to add a rc command.
	Should not be used directly, use #setProperty:ofGroup:to: instead."
	rcCommands add: aMLBRcCommand
]

{ #category : #'command generation' }
MLBStyleSheet >> generateCommandsIn: aMLBCommandList [
	aMLBCommandList addAll: rcCommands
]

{ #category : #initialization }
MLBStyleSheet >> initialize [
	super initialize.
	rcCommands := OrderedCollection new
]

{ #category : #initialization }
MLBStyleSheet >> setProperty: propertyName ofGroup: groupName to: anObject [
	self
		addRcCommand:
			(MLBRcCommand new
				group: groupName;
				setProperty: propertyName to: anObject;
				yourself)
]
