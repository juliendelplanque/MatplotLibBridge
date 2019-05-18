"
I am an abstract object which can be visited by a MLBAbstractVisitor.

I ensure my subclasses implement a sufficient API to be visited.
"
Class {
	#name : #MLBVisitableObject,
	#superclass : #Object,
	#category : #'MatplotLibBridge-Model'
}

{ #category : #visiting }
MLBVisitableObject >> acceptVisitor: visitor [
	^ self subclassResponsibility
]
