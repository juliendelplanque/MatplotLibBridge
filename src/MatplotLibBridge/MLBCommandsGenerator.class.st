"
I am an abstract object that is able to #generateCommandsIn:.
"
Class {
	#name : #MLBCommandsGenerator,
	#superclass : #Object,
	#category : #'MatplotLibBridge-Model'
}

{ #category : #visiting }
MLBCommandsGenerator >> acceptVisitor: visitor [
	^ self subclassResponsibility
]
