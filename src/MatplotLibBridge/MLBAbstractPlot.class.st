"
I am a high-level abstract object to draw plot from matplotlib.

I define methods common to all plot object.

You do not have to bother with Python code at all when using my subclasses. In fact it is my purpose to avoid you learning Python to be able to use them!
"
Class {
	#name : #MLBAbstractPlot,
	#superclass : #Object,
	#instVars : [
		'commandList',
		'title',
		'titleFontDict',
		'titleLocation',
		'xAxis',
		'yAxis',
		'style',
		'annotations',
		'axis',
		'gridOnAxis'
	],
	#category : 'MatplotLibBridge-API'
}

{ #category : #accessing }
MLBAbstractPlot class >> availableGrids [
	^ #('both' 'x' 'y')
]

{ #category : #testing }
MLBAbstractPlot class >> isValidGrid: aString [
	^ self availableGrids includes: aString
]

{ #category : #visiting }
MLBAbstractPlot >> acceptVisitor: visitor [
	^ self subclassResponsibility
]

{ #category : #annotations }
MLBAbstractPlot >> addAnnotation: aBlock [
	| annotation |
	annotation := MLBAnnotation new.
	aBlock value: annotation.
	self annotations add: annotation
]

{ #category : #accessing }
MLBAbstractPlot >> annotations [
	^ annotations
]

{ #category : #accessing }
MLBAbstractPlot >> annotations: anObject [
	annotations := anObject
]

{ #category : #accessing }
MLBAbstractPlot >> axis [
	^ axis
]

{ #category : #accessing }
MLBAbstractPlot >> axis: anObject [
	axis := anObject
]

{ #category : #building }
MLBAbstractPlot >> build [
	self
		preBuild;
		inBuild;
		postBuild
]

{ #category : #accessing }
MLBAbstractPlot >> commandList [
	^ commandList
]

{ #category : #accessing }
MLBAbstractPlot >> commandList: anObject [
	commandList := anObject
]

{ #category : #'axis configuration' }
MLBAbstractPlot >> configXAxis: aBlock [
	aBlock value: self xAxis
]

{ #category : #'axis configuration' }
MLBAbstractPlot >> configYAxis: aBlock [
	aBlock value: self yAxis
]

{ #category : #executing }
MLBAbstractPlot >> execute [
	self commandList executeOptimized.
	self commandList: MLBCommandList new
]

{ #category : #generating }
MLBAbstractPlot >> generateIn: aFileReference [
	self build.
	self commandList 
		add: (MLBSaveFigCommand new
					filename: aFileReference fullName;
					bbox_inches: 'tight';
					transparent: true;
					yourself).
	self execute
]

{ #category : #accessing }
MLBAbstractPlot >> gridOnAxis [
	^ gridOnAxis
]

{ #category : #accessing }
MLBAbstractPlot >> gridOnAxis: aString [
	(self class isValidGrid: aString)
		ifFalse: [ self error: ('Invalid grid: {1}' format: { aString }) ].
	gridOnAxis := aString
]

{ #category : #'gt-inspector-extension' }
MLBAbstractPlot >> gtInspectorPython3CodeIn: composite [
	<gtInspectorPresentationOrder: -10>
	composite text
		title: 'Python 3 code';
		display: [ 
			(self build; commandList)
				optimizeGeneratedInstructions
					generate ]
]

{ #category : #building }
MLBAbstractPlot >> inBuild [
	^ self subclassResponsibility
]

{ #category : #initialization }
MLBAbstractPlot >> initialize [
	super initialize.
	self
		commandList: MLBCommandList new;
		title: '';
		annotations: OrderedCollection new;
		xAxis: MLBXAxis new;
		yAxis: MLBYAxis new
]

{ #category : #building }
MLBAbstractPlot >> postBuild [
	self commandList
		add: (MLBTitleCommand new
				s: self title;
				fontdict: self titleFontDict;
				loc: self titleLocation;
				yourself);
		add: (MLBAxis new
					v: self axis;
					yourself).
	self xAxis generateCommandsIn: self commandList.
	self yAxis generateCommandsIn: self commandList.
	self annotations do: [ :annotation |
		annotation generateCommandsIn: self commandList ].
	self gridOnAxis ifNotNil: [ 
		self commandList
			add: (MLBGridCommand new
						axis: self gridOnAxis;
						yourself) ]
]

{ #category : #building }
MLBAbstractPlot >> preBuild [
	self commandList add: MLBClfCommand new.
	style ifNotNil: [ 
		style generateCommandsIn: self commandList ]
]

{ #category : #showing }
MLBAbstractPlot >> show [
	self build.
	self commandList add: MLBShowCommand new.
	self execute
]

{ #category : #grid }
MLBAbstractPlot >> showGrid [
	self gridOnAxis: 'both'
]

{ #category : #grid }
MLBAbstractPlot >> showXGrid [
	self gridOnAxis: 'x'
]

{ #category : #grid }
MLBAbstractPlot >> showYGrid [
	self gridOnAxis: 'y'
]

{ #category : #accessing }
MLBAbstractPlot >> style [
	^ style
]

{ #category : #accessing }
MLBAbstractPlot >> style: anObject [
	style := anObject
]

{ #category : #accessing }
MLBAbstractPlot >> title [
	^ title
]

{ #category : #accessing }
MLBAbstractPlot >> title: anObject [
	title := anObject
]

{ #category : #accessing }
MLBAbstractPlot >> titleFontDict [
	^ titleFontDict
]

{ #category : #accessing }
MLBAbstractPlot >> titleFontDict: anObject [
	titleFontDict := anObject
]

{ #category : #accessing }
MLBAbstractPlot >> titleLocation [
	^ titleLocation
]

{ #category : #accessing }
MLBAbstractPlot >> titleLocation: anObject [
	titleLocation := anObject
]

{ #category : #accessing }
MLBAbstractPlot >> xAxis [
	^ xAxis
]

{ #category : #accessing }
MLBAbstractPlot >> xAxis: anObject [
	xAxis := anObject
]

{ #category : #style }
MLBAbstractPlot >> xkcdStyle [
	style := MLBXkcdCommand new
]

{ #category : #accessing }
MLBAbstractPlot >> yAxis [
	^ yAxis
]

{ #category : #accessing }
MLBAbstractPlot >> yAxis: anObject [
	yAxis := anObject
]
