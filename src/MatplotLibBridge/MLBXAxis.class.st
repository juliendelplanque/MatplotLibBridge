"
I am the description of an X axis of a plot.
"
Class {
	#name : #MLBXAxis,
	#superclass : #MLBAbstractAxis,
	#category : 'MatplotLibBridge-API'
}

{ #category : #'command generation' }
MLBXAxis >> generateCommandsIn: aMLBCommandList [
	super generateCommandsIn: aMLBCommandList.
	aMLBCommandList
		add: (self limCommandClass new
				xmin: self min;
				xmax: self max;
				yourself)
]

{ #category : #private }
MLBXAxis >> labelCommandClass [
	^ MLBXLabelCommand
]

{ #category : #private }
MLBXAxis >> limCommandClass [
	^ MLBXLimCommand
]

{ #category : #private }
MLBXAxis >> scaleCommandClass [
	^ MLBXScaleCommand
]

{ #category : #private }
MLBXAxis >> ticksCommandClass [
	^ MLBXTicksCommand
]
