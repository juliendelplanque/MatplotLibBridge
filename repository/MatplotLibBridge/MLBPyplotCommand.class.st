"
I am a command using a function from the matplotlib.pyplot Python module.
"
Class {
	#name : #MLBPyplotCommand,
	#superclass : #MLBCommand,
	#category : 'MatplotLibBridge-Commands'
}

{ #category : #accessing }
MLBPyplotCommand class >> pyplotModuleName [
	^ 'matplotlib' asP3GIdentifier => 'pyplot'
]

{ #category : #initialization }
MLBPyplotCommand >> initialize [
	super initialize.
	self module: self pyplotModuleName
]

{ #category : #accessing }
MLBPyplotCommand >> pyplotModuleName [
	^ self class pyplotModuleName
]
