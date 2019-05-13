"
I am an abstract object that is able to #generateCommandsIn:.
"
Class {
	#name : #MLBCommandsGenerator,
	#superclass : #Object,
	#category : #'MatplotLibBridge-API'
}

{ #category : #visiting }
MLBCommandsGenerator >> acceptVisitor: visitor [
	^ self subclassResponsibility
]
