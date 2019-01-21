Class {
	#name : #MLBCommandListGenerator,
	#superclass : #MLBAbstractVisitor,
	#instVars : [
		'commandList'
	],
	#category : #'MatplotLibBridge-Visitors'
}

{ #category : #building }
MLBCommandListGenerator >> afterBuildingPlot: aMLBAbstractPlot [
	self commandList
		add: (MLBTitleCommand new
				s: aMLBAbstractPlot title;
				fontdict: aMLBAbstractPlot titleFontDict;
				loc: aMLBAbstractPlot titleLocation;
				yourself);
		add: (MLBAxis new
					v: aMLBAbstractPlot axis;
					yourself).
	aMLBAbstractPlot xAxis
		acceptVisitor: self.
	aMLBAbstractPlot yAxis
		acceptVisitor: self.
	aMLBAbstractPlot annotations do: [ :annotation |
		annotation acceptVisitor: self ].
	aMLBAbstractPlot gridOnAxis ifNotNil: [ 
		self commandList
			add: (MLBGridCommand new
						axis: aMLBAbstractPlot gridOnAxis;
						yourself) ]
]

{ #category : #building }
MLBCommandListGenerator >> beforeBuildingPlot: aMLBAbstractPlot [
	self commandList add: MLBClfCommand new.
	aMLBAbstractPlot style ifNotNil: [ :style | 
		style generateCommandsIn: self commandList ]
]

{ #category : #helper }
MLBCommandListGenerator >> buildPlot: plot withBeforeAfterHooks: aBlock [
	self beforeBuildingPlot: plot.
	aBlock value: plot.
	self afterBuildingPlot: plot
]

{ #category : #accessing }
MLBCommandListGenerator >> commandList [
	^ commandList
]

{ #category : #accessing }
MLBCommandListGenerator >> commandList: anObject [
	commandList := anObject
]

{ #category : #initialization }
MLBCommandListGenerator >> initialize [
	super initialize.
	self commandList: MLBCommandList new
]

{ #category : #visiting }
MLBCommandListGenerator >> visitMLBAbstractAxis: aMLBAbstractAxis [
	|tempTicks|
	self commandList
		add: (aMLBAbstractAxis labelCommandClass new
					s: aMLBAbstractAxis title;
					yourself).
	tempTicks := aMLBAbstractAxis ticksCommandClass new
					rotation: aMLBAbstractAxis labelsRotation;
					yourself.
	aMLBAbstractAxis labels ifNotNil: [ 
		tempTicks
			ticks: (aMLBAbstractAxis ticks ifNil: [ (0 to: aMLBAbstractAxis labels size - 1) asArray ]);
			labels: aMLBAbstractAxis labels ].
	self commandList
		add: tempTicks.
	aMLBAbstractAxis scale ifNotNil: [ 
		self commandList
			add: (aMLBAbstractAxis scaleCommandClass new
						scale: aMLBAbstractAxis scale;
						yourself) ]
]

{ #category : #visiting }
MLBCommandListGenerator >> visitMLBBarPlot: aMLBBarPlot [
	self buildPlot: aMLBBarPlot withBeforeAfterHooks: [ :plot |
		self commandList
			add: (MLBBarCommand new
				left: (0 to: plot data size - 1);
				height: plot data;
				tick_label: plot labels;
				color: plot color;
				yerr: plot errorBars;
				ecolor: plot errorBarsColor;
				"Next line is due to some kind of hack in matplotlib to align labels on right edge."
				width: (plot isAlignLabelRightEdge ifTrue: [ plot barWidth negated ] ifFalse: [ plot barWidth ]);
				align: plot align;
				log: plot logAxis;
				yourself) ]
]

{ #category : #visiting }
MLBCommandListGenerator >> visitMLBXAxis: aMLBXAxis [
	self visitMLBAbstractAxis: aMLBXAxis.
	self commandList
		add: (aMLBXAxis limCommandClass new
				xmin: aMLBXAxis min;
				xmax: aMLBXAxis max;
				yourself)
]

{ #category : #visiting }
MLBCommandListGenerator >> visitMLBYAxis: aMLBYAxis [
	self visitMLBAbstractAxis: aMLBYAxis.
	self commandList
		add: (aMLBYAxis limCommandClass new
				ymin: aMLBYAxis min;
				ymax: aMLBYAxis max;
				yourself)
]
