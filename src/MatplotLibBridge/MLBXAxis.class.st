"
I am the description of an X axis of a plot.
"
Class {
	#name : #MLBXAxis,
	#superclass : #MLBAbstractAxis,
	#category : #'MatplotLibBridge-Model'
}

{ #category : #visiting }
MLBXAxis >> acceptVisitor: visitor [
	^ visitor visitMLBXAxis: self
]
