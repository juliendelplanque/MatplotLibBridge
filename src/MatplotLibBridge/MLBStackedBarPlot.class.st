"
I am a high-level object to draw stacked bar plot from matplotlib.
"
Class {
	#name : #MLBStackedBarPlot,
	#superclass : #MLBAbstractBarPlot,
	#instVars : [
		'dataList',
		'colorList',
		'errorBarsList',
		'errorBarsColorList'
	],
	#category : #'MatplotLibBridge-Model'
}

{ #category : #example }
MLBStackedBarPlot class >> example [
	MLBExamples exampleStackedBarplot
]

{ #category : #visiting }
MLBStackedBarPlot >> acceptVisitor: visitor [
	^ visitor visitMLBStackedBarPlot: self
]

{ #category : #accessing }
MLBStackedBarPlot >> colorList [
	^ colorList
]

{ #category : #accessing }
MLBStackedBarPlot >> colorList: anObject [
	colorList := anObject
]

{ #category : #accessing }
MLBStackedBarPlot >> dataList [
	^ dataList
]

{ #category : #accessing }
MLBStackedBarPlot >> dataList: anObject [
	dataList := anObject
]

{ #category : #accessing }
MLBStackedBarPlot >> errorBarsColorList [
	^ errorBarsColorList
]

{ #category : #accessing }
MLBStackedBarPlot >> errorBarsColorList: anObject [
	errorBarsColorList := anObject
]

{ #category : #accessing }
MLBStackedBarPlot >> errorBarsList [
	^ errorBarsList
]

{ #category : #accessing }
MLBStackedBarPlot >> errorBarsList: anObject [
	errorBarsList := anObject
]
