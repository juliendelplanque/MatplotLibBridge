"
I am the description of an Y axis of a plot.
"
Class {
	#name : #MLBYAxis,
	#superclass : #MLBAbstractAxis,
	#category : #'MatplotLibBridge-Model'
}

{ #category : #visiting }
MLBYAxis >> acceptVisitor: visitor [
	^ visitor visitMLBYAxis: self
]
