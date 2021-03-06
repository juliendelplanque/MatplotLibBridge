"
I am a high-level abstract object to draw plot from matplotlib.

I define methods common to all plot object.

You do not have to bother with Python code at all when using my subclasses. In fact it is my purpose to avoid you learning Python to be able to use them!
"
Class {
	#name : #MLBAbstractPlot,
	#superclass : #MLBVisitableObject,
	#instVars : [
		'title',
		'titleFontDict',
		'titleLocation',
		'xAxis',
		'yAxis',
		'style',
		'annotations',
		'axis',
		'gridOnAxis',
		'xAxisTwin',
		'yAxisTwin'
	],
	#category : #'MatplotLibBridge-Model'
}

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

{ #category : #'axis configuration' }
MLBAbstractPlot >> configXAxis: aBlock [
	aBlock value: self xAxis
]

{ #category : #'axis configuration' }
MLBAbstractPlot >> configYAxis: aBlock [
	aBlock value: self yAxis
]

{ #category : #'axis configuration' }
MLBAbstractPlot >> createXAxisTwin: configurationBlock [
	self xAxisTwin: self xAxis copy.
	configurationBlock value: self xAxisTwin
]

{ #category : #'axis configuration' }
MLBAbstractPlot >> createYAxisTwin: configurationBlock [
	self yAxisTwin: self yAxis copy.
	configurationBlock value: self yAxisTwin
]

{ #category : #accessing }
MLBAbstractPlot >> gridOnAxis [
	^ gridOnAxis
]

{ #category : #accessing }
MLBAbstractPlot >> gridOnAxis: anObject [
	gridOnAxis := anObject asMLBGridStyle
]

{ #category : #testing }
MLBAbstractPlot >> hasXAxisTwin [
	^ self xAxisTwin isNotNil
]

{ #category : #testing }
MLBAbstractPlot >> hasYAxisTwin [
	^ self yAxisTwin isNotNil
]

{ #category : #initialization }
MLBAbstractPlot >> initialize [
	super initialize.
	self
		title: '';
		annotations: OrderedCollection new;
		xAxis: MLBXAxis new;
		yAxis: MLBYAxis new
]

{ #category : #grid }
MLBAbstractPlot >> showGrid [
	self gridOnAxis: 'both' asMLBGridStyle
]

{ #category : #grid }
MLBAbstractPlot >> showXGrid [
	self gridOnAxis: 'x' asMLBGridStyle
]

{ #category : #grid }
MLBAbstractPlot >> showYGrid [
	self gridOnAxis: 'y' asMLBGridStyle
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

{ #category : #accessing }
MLBAbstractPlot >> xAxisTwin [
	^ xAxisTwin
]

{ #category : #accessing }
MLBAbstractPlot >> xAxisTwin: anObject [
	xAxisTwin := anObject
]

{ #category : #styling }
MLBAbstractPlot >> xkcdStyle [
	self style: MLBXKCDStyleSheet new
]

{ #category : #accessing }
MLBAbstractPlot >> yAxis [
	^ yAxis
]

{ #category : #accessing }
MLBAbstractPlot >> yAxis: anObject [
	yAxis := anObject
]

{ #category : #accessing }
MLBAbstractPlot >> yAxisTwin [
	^ yAxisTwin
]

{ #category : #accessing }
MLBAbstractPlot >> yAxisTwin: anObject [
	yAxisTwin := anObject
]
