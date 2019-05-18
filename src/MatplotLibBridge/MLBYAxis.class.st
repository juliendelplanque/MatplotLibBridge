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

{ #category : #private }
MLBYAxis >> labelCommandClass [
	^ MLBYLabelCommand
]

{ #category : #private }
MLBYAxis >> limCommandClass [
	^ MLBYLimCommand
]

{ #category : #private }
MLBYAxis >> scaleCommandClass [
	^ MLBYScaleCommand
]

{ #category : #private }
MLBYAxis >> ticksCommandClass [
	^ MLBYTicksCommand
]
