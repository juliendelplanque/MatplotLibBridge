"
I am an abstract object that is able to #generateCommandsIn:.
"
Class {
	#name : #MLBCommandsGenerator,
	#superclass : #Object,
	#category : #'MatplotLibBridge-API'
}

{ #category : #'command generation' }
MLBCommandsGenerator >> generateCommandsIn: aMLBCommandList [
	self subclassResponsibility
]
