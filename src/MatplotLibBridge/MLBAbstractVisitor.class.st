"
I am an abstract visitor.

I describe the method to be implemented by my subclasses.
"
Class {
	#name : #MLBAbstractVisitor,
	#superclass : #Object,
	#category : #'MatplotLibBridge-Visitors'
}

{ #category : #visiting }
MLBAbstractVisitor >> visit: anObject [
	^ anObject acceptVisitor: self
]

{ #category : #visiting }
MLBAbstractVisitor >> visitMLBAnnotation: aMLBAnnotation [
	^ self subclassResponsibility
]

{ #category : #visiting }
MLBAbstractVisitor >> visitMLBBarPlot: aMLBBarPlot [
	^ self subclassResponsibility
]

{ #category : #visiting }
MLBAbstractVisitor >> visitMLBBoxPlot: aMLBBoxPlot [
	^ self subclassResponsibility
]

{ #category : #visiting }
MLBAbstractVisitor >> visitMLBLegend: aMLBLegend [
	^ self subclassResponsibility
]

{ #category : #visiting }
MLBAbstractVisitor >> visitMLBLinePlot: aMLBLinePlot [
	^ self subclassResponsibility
]

{ #category : #visiting }
MLBAbstractVisitor >> visitMLBPiePlot: aMLBPiePlot [
	^ self subclassResponsibility
]

{ #category : #visiting }
MLBAbstractVisitor >> visitMLBPointsLine: aMLBPointsLine [
	^ self subclassResponsibility
]

{ #category : #visiting }
MLBAbstractVisitor >> visitMLBScatterPlot2: aMLBScatterPlots [
	^ self subclassResponsibility
]

{ #category : #visiting }
MLBAbstractVisitor >> visitMLBScatterPlot: aMLBScatterPlot [
	^ self subclassResponsibility
]

{ #category : #visiting }
MLBAbstractVisitor >> visitMLBStackedBarPlot: aMLBStackedBarPlot [
	^ self subclassResponsibility
]

{ #category : #visiting }
MLBAbstractVisitor >> visitMLBStyleSheet: aMLBStyleSheet [
	^ self subclassResponsibility
]

{ #category : #visiting }
MLBAbstractVisitor >> visitMLBStyleSheetProperty: aMLBStyleSheetProperty [
	^ self subclassResponsibility
]

{ #category : #visiting }
MLBAbstractVisitor >> visitMLBXAxis: aMLBXAxis [
	^ self subclassResponsibility
]

{ #category : #visiting }
MLBAbstractVisitor >> visitMLBXBlockLine: aMLBXBlockLine [
	^ self subclassResponsibility
]

{ #category : #visiting }
MLBAbstractVisitor >> visitMLBXKCDStyleSheet: aMLBXKCDStyleSheet [
	^ self subclassResponsibility
]

{ #category : #visiting }
MLBAbstractVisitor >> visitMLBYAxis: aMLBYAxis [
	^ self subclassResponsibility
]

{ #category : #visiting }
MLBAbstractVisitor >> visitMLBYBlockLine: aMLBYBlockLine [
	^ self subclassResponsibility
]
