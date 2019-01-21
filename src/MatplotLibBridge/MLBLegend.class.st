"
I represent the legend of a line plot.
"
Class {
	#name : #MLBLegend,
	#superclass : #MLBCommandsGenerator,
	#instVars : [
		'location',
		'numberOfColumns',
		'fontSize',
		'hasFancyBox',
		'hasShadow',
		'frameTransparency',
		'title'
	],
	#category : #'MatplotLibBridge-API'
}

{ #category : #visiting }
MLBLegend >> acceptVisitor: visitor [
	^ visitor visitMLBLegend: self
]

{ #category : #accessing }
MLBLegend >> fontSize [
	^ fontSize
]

{ #category : #accessing }
MLBLegend >> fontSize: anObject [
	fontSize := anObject
]

{ #category : #accessing }
MLBLegend >> frameTransparency [
	^ frameTransparency
]

{ #category : #accessing }
MLBLegend >> frameTransparency: anObject [
	frameTransparency := anObject
]

{ #category : #'command generation' }
MLBLegend >> generateCommandsIn: aMLBCommandList [
	aMLBCommandList
		add: (MLBLegendCommand new
					fontsize: self fontSize;
					framealpha: self frameTransparency;
					fancybox: self hasFancyBox;
					shadow: self hasShadow;
					loc: self location;
					ncol: self numberOfColumns;
					title: self title;
					yourself)
]

{ #category : #accessing }
MLBLegend >> hasFancyBox [
	^ hasFancyBox
]

{ #category : #accessing }
MLBLegend >> hasFancyBox: anObject [
	hasFancyBox := anObject
]

{ #category : #accessing }
MLBLegend >> hasShadow [
	^ hasShadow
]

{ #category : #accessing }
MLBLegend >> hasShadow: anObject [
	hasShadow := anObject
]

{ #category : #accessing }
MLBLegend >> location [
	^ location
]

{ #category : #accessing }
MLBLegend >> location: anObject [
	location := anObject
]

{ #category : #accessing }
MLBLegend >> numberOfColumns [
	^ numberOfColumns
]

{ #category : #accessing }
MLBLegend >> numberOfColumns: anObject [
	numberOfColumns := anObject
]

{ #category : #accessing }
MLBLegend >> title [
	^ title
]

{ #category : #accessing }
MLBLegend >> title: anObject [
	title := anObject
]
