"
I am a command using a function from the matplotlib Python module.
"
Class {
	#name : #MLBMatplotlibCommand,
	#superclass : #MLBCommand,
	#category : #'MatplotLibBridge-Commands-Core'
}

{ #category : #accessing }
MLBMatplotlibCommand class >> matplotlibModuleName [
	^ 'matplotlib' asP3GIdentifier
]

{ #category : #initialization }
MLBMatplotlibCommand >> initialize [
	super initialize.
	self module: self matplotlibModuleName
]

{ #category : #accessing }
MLBMatplotlibCommand >> matplotlibModuleName [
	^ self class matplotlibModuleName
]
