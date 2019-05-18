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
		style acceptVisitor: self ]
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
MLBCommandListGenerator >> visitMLBAnnotation: aMLBAnnotation [
	aMLBAnnotation position ifNil: [ 
		MLBConfigurationUnfinished new
			object: self;
			selector: #position;
			signal ].
	aMLBAnnotation verifyArrowProperties: aMLBAnnotation arrowProperties.
	self commandList
		add: (MLBAnnotateCommand new
								s: aMLBAnnotation content;
								xy: {aMLBAnnotation position x . aMLBAnnotation position y};
								xytext: {aMLBAnnotation textPosition x . aMLBAnnotation textPosition y};
								arrowprops: aMLBAnnotation arrowProperties;
								annotation_clip: aMLBAnnotation onlyVisibleInsideAxes;
								yourself)
]

{ #category : #visiting }
MLBCommandListGenerator >> visitMLBAxis: aMLBAbstractAxis usingLabelCommandClass: labelCommandClass ticksCommandClass: ticksCommandClass scaleCommandClass: scaleCommandClass [
	|tempTicks|
	self commandList
		add: (labelCommandClass new
					s: aMLBAbstractAxis title;
					yourself).
	tempTicks := ticksCommandClass new
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
			add: (scaleCommandClass new
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
MLBCommandListGenerator >> visitMLBBoxPlot: aMLBBoxPlot [
	self buildPlot: aMLBBoxPlot withBeforeAfterHooks: [ :plot |
		plot isVertical
			ifTrue: [ 
				plot configXAxis: [ :x | x ticks: (1 to: x labels size) ] ]
			ifFalse: [ 
				plot configYAxis: [ :y | y ticks: (1 to: y labels size) ] ].
		self commandList
			add: (MLBBoxplotCommand new
						x: plot dataList;
						labels: plot labels;
						vert: plot vertical;
						yourself) ]
]

{ #category : #visiting }
MLBCommandListGenerator >> visitMLBCommandsGenerator: aMLBCommandsGenerator [
	aMLBCommandsGenerator generateCommandsIn: self commandList
]

{ #category : #visiting }
MLBCommandListGenerator >> visitMLBLegend: aMLBLegend [
	self commandList
		add: (MLBLegendCommand new
					fontsize: aMLBLegend fontSize;
					framealpha: aMLBLegend frameTransparency;
					fancybox: aMLBLegend hasFancyBox;
					shadow: aMLBLegend hasShadow;
					loc: aMLBLegend location;
					ncol: aMLBLegend numberOfColumns;
					title: aMLBLegend title;
					yourself)
]

{ #category : #visiting }
MLBCommandListGenerator >> visitMLBLine: aMLBLine [
	self commandList
		add:
			(MLBPlotCommand new
				x: aMLBLine x;
				y: aMLBLine y;
				linestyle: aMLBLine style;
				marker: aMLBLine marker;
				alpha: aMLBLine alpha;
				color: aMLBLine colorHexString;
				label: aMLBLine label;
				linewidth: aMLBLine width;
				yourself)
]

{ #category : #visiting }
MLBCommandListGenerator >> visitMLBLinePlot: aMLBLinePlot [
	self buildPlot: aMLBLinePlot withBeforeAfterHooks: [ :plot |
	plot lines do: [ :line |
		line acceptVisitor: self ].

	(plot lines anySatisfy: #hasLabel)
		ifTrue: [ 
			self commandList
				add: MLBLegendCommand new ].
	
	(plot legend isNotNil and: [ (plot lines anySatisfy: #hasLabel) ])
		ifTrue: [ plot legend acceptVisitor: self ] ]
]

{ #category : #visiting }
MLBCommandListGenerator >> visitMLBPiePlot: aMLBPiePlot [
	self buildPlot: aMLBPiePlot withBeforeAfterHooks: [ :plot |
	self commandList
		add: (MLBPieCommand new
					x: plot data;
					labels: plot labels;
					shadow: plot hasShadow;
					explode: plot explode;
					startangle: plot startAngle;
					radius: plot radius;
					counterclock: plot isCounterClock;
					colors: plot colors;
					yourself) ]
]

{ #category : #visiting }
MLBCommandListGenerator >> visitMLBPointsLine: aMLBPointsLine [
	self visitMLBLine: aMLBPointsLine
]

{ #category : #visiting }
MLBCommandListGenerator >> visitMLBScatterPlot2: aMLBScatterPlots [
	self buildPlot: aMLBScatterPlots withBeforeAfterHooks: [ :plot |
	((plot data groupedBy: #marker) associations
		sorted: [ :a :b | 
			(plot markersOrder indexOf: a key) < (plot markersOrder indexOf: b key) ])
		do: [ :assoc |
			|marker scatterData|
			marker := assoc key.
			scatterData := assoc value.
			self commandList
			add:
				(MLBScatterCommand new
					x: (scatterData collect: #x);
					y: (scatterData collect: #y);
					s: (scatterData collect: #size);
					c: (scatterData collect: #color);
					marker: marker;
					yourself) ] ]
]

{ #category : #visiting }
MLBCommandListGenerator >> visitMLBScatterPlot: aMLBScatterPlot [
	self buildPlot: aMLBScatterPlot withBeforeAfterHooks: [ :plot |
	self commandList
		add:
			(MLBScatterCommand new
				x: plot  x;
				y: plot  y;
				s: plot  pointSizes;
				c:
					(plot  colors isCollection
						ifTrue: [ plot  colors collect: [ :c | '#' , c asHexString ] ]
						ifFalse: [ '#' , plot  colors asHexString ]);
				yourself) ]
]

{ #category : #visiting }
MLBCommandListGenerator >> visitMLBStackedBarPlot: aMLBStackedBarPlot [
	self buildPlot: aMLBStackedBarPlot withBeforeAfterHooks: [ :plot |
	self commandList
		add:
			(MLBBarCommand new
				left: (0 to: plot dataList size - 1);
				height: (plot dataList collect: #first);
				tick_label: plot labels;
				color: plot colorList first;
				yerr:
					(plot errorBarsList
						ifNotNil: [ :list | list collect: #first ]);
				ecolor:
					(plot errorBarsColorList
						ifNotNil: [ :list | list asOrderedCollection first ]);
				"Next line is due to some kind of hack in matplotlib to align labels on right edge."
				width: (plot isAlignLabelRightEdge ifTrue: [ plot barWidth negated ] ifFalse: [ plot barWidth ]);
				align: plot align;
				log: plot logAxis;
				yourself).
	2 to: plot dataList anyOne size do: [ :i | 
		self commandList
			add:
				(MLBBarCommand new
					left: (0 to: plot dataList size - 1);
					height: (plot dataList collect: [ :d | d at: i ]);
					bottom:
						(plot dataList
							collect: [ :d | ((1 to: i - 1) collect: [ :j | d at: j ]) sum ]);
					color: (plot colorList at: i);
					yerr:
						(plot errorBarsList
							ifNotNil: [ :list | list collect: [ :e | e at: i ] ]);
					ecolor:
						(plot errorBarsColorList
							ifNotNil: [ :list | (list asOrderedCollection at: i) asHexString ]);
					"Next line is due to some kind of hack in matplotlib to align labels on right edge."
					width: (plot isAlignLabelRightEdge ifTrue: [ plot barWidth negated ] ifFalse: [ plot barWidth ]);
					align: plot align;
					yourself) ] ]
]

{ #category : #visiting }
MLBCommandListGenerator >> visitMLBStyleSheet: aMLBStyleSheet [
	self commandList
		addAll: aMLBStyleSheet rcCommands
]

{ #category : #visiting }
MLBCommandListGenerator >> visitMLBXAxis: aMLBXAxis [
	self visitMLBAxis: aMLBXAxis usingLabelCommandClass: MLBXLabelCommand ticksCommandClass: MLBXTicksCommand scaleCommandClass: MLBXScaleCommand.
	self commandList
		add: (MLBXLimCommand new
				xmin: aMLBXAxis min;
				xmax: aMLBXAxis max;
				yourself)
]

{ #category : #visiting }
MLBCommandListGenerator >> visitMLBXBlockLine: aMLBXBlockLine [
	self visitMLBLine: aMLBXBlockLine
]

{ #category : #visiting }
MLBCommandListGenerator >> visitMLBYAxis: aMLBYAxis [
	self visitMLBAxis: aMLBYAxis usingLabelCommandClass: MLBYLabelCommand ticksCommandClass: MLBYTicksCommand scaleCommandClass: MLBYScaleCommand.
	self commandList
		add: (MLBYLimCommand new
				ymin: aMLBYAxis min;
				ymax: aMLBYAxis max;
				yourself)
]

{ #category : #visiting }
MLBCommandListGenerator >> visitMLBYBlockLine: aMLBYBlockLine [
	self visitMLBLine: aMLBYBlockLine
]
