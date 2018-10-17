"
I am the description of an Y axis of a plot.
"
Class {
	#name : #MLBYAxis,
	#superclass : #MLBAbstractAxis,
	#category : 'MatplotLibBridge-API'
}

{ #category : #'command generation' }
MLBYAxis >> generateCommandsIn: aMLBCommandList [
	super generateCommandsIn: aMLBCommandList.
	aMLBCommandList
		add: (self limCommandClass new
				ymin: self min;
				ymax: self max;
				yourself)
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
