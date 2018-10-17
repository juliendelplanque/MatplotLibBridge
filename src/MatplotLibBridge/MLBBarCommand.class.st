"
I am a wrapper for the matplotlib.pyplot.bar function.

I have the following attributes as described in matplotlib doc:
-left : sequence of scalars: the x coordinates of the left sides of the bars
-height : sequence of scalars the heights of the bars
-width : scalar or array-like, optional the width(s) of the bars default: 0.8
-bottom : scalar or array-like, optional the y coordinate(s) of the bars default: None
-color : scalar or array-like, optional the colors of the bar faces
-edgecolor : scalar or array-like, optional the colors of the bar edges
-linewidth : scalar or array-like, optional width of bar edge(s). If None, use default linewidth; If 0, don’t draw edges. default: None
-tick_label : string or array-like, optional the tick labels of the bars default: None
-xerr : scalar or array-like, optional if not None, will be used to generate errorbar(s) on the bar chart default: None
-yerr : scalar or array-like, optional if not None, will be used to generate errorbar(s) on the bar chart default: None
-ecolor : scalar or array-like, optional specifies the color of errorbar(s) default: None
-capsize : scalar, optional determines the length in points of the error bar caps default: None, which will take the value from the errorbar.capsize rcParam.
-error_kw : dict, optional dictionary of kwargs to be passed to errorbar method. ecolor and capsize may be specified here rather than as independent kwargs.
-align : {‘edge’, ‘center’}, optional If ‘edge’, aligns bars by their left edges (for vertical bars) and by their bottom edges (for horizontal bars). If ‘center’, interpret the left argument as the coordinates of the centers of the bars. To align on the align bars on the right edge pass a negative width.
-orientation : {‘vertical’, ‘horizontal’}, optional The orientation of the bars.
-log : boolean, optional If true, sets the axis to be log scale. default: False
"
Class {
	#name : #MLBBarCommand,
	#superclass : #MLBPyplotCommand,
	#instVars : [
		'left',
		'height',
		'width',
		'bottom',
		'color',
		'edgecolor',
		'linewidth',
		'tick_label',
		'xerr',
		'yerr',
		'ecolor',
		'capsize',
		'error_kw',
		'align',
		'orientation',
		'log'
	],
	#category : 'MatplotLibBridge-Commands'
}

{ #category : #accessing }
MLBBarCommand >> align [
	<mlbAttribute>
	^ align
]

{ #category : #accessing }
MLBBarCommand >> align: anObject [
	align := anObject
]

{ #category : #accessing }
MLBBarCommand >> block [
	<mlbAttribute>
	^ capsize
]

{ #category : #accessing }
MLBBarCommand >> bottom [
	<mlbAttribute>
	^ bottom
]

{ #category : #accessing }
MLBBarCommand >> bottom: anObject [
	bottom := anObject
]

{ #category : #accessing }
MLBBarCommand >> capsize: anObject [
	capsize := anObject
]

{ #category : #accessing }
MLBBarCommand >> color [
	<mlbAttribute>
	^ color
]

{ #category : #accessing }
MLBBarCommand >> color: anObject [
	color := anObject
]

{ #category : #accessing }
MLBBarCommand >> ecolor [
	<mlbAttribute>
	^ ecolor
]

{ #category : #accessing }
MLBBarCommand >> ecolor: anObject [
	ecolor := anObject
]

{ #category : #accessing }
MLBBarCommand >> edgecolor [
	<mlbAttribute>
	^ edgecolor
]

{ #category : #accessing }
MLBBarCommand >> edgecolor: anObject [
	edgecolor := anObject
]

{ #category : #accessing }
MLBBarCommand >> error_kw [
	<mlbAttribute>
	^ error_kw
]

{ #category : #accessing }
MLBBarCommand >> error_kw: anObject [
	error_kw := anObject
]

{ #category : #accessing }
MLBBarCommand >> functionName [
	^ 'bar'
]

{ #category : #accessing }
MLBBarCommand >> height [
	<mlbAttribute>
	^ height
]

{ #category : #accessing }
MLBBarCommand >> height: anObject [
	height := anObject
]

{ #category : #accessing }
MLBBarCommand >> left [
	<mlbAttribute>
	^ left
]

{ #category : #accessing }
MLBBarCommand >> left: anObject [
	left := anObject
]

{ #category : #accessing }
MLBBarCommand >> linewidth [
	<mlbAttribute>
	^ linewidth
]

{ #category : #accessing }
MLBBarCommand >> linewidth: anObject [
	linewidth := anObject
]

{ #category : #accessing }
MLBBarCommand >> log [
	<mlbAttribute>
	^ log
]

{ #category : #accessing }
MLBBarCommand >> log: anObject [
	log := anObject
]

{ #category : #accessing }
MLBBarCommand >> orientation [
	<mlbAttribute>
	^ orientation
]

{ #category : #accessing }
MLBBarCommand >> orientation: anObject [
	orientation := anObject
]

{ #category : #accessing }
MLBBarCommand >> tick_label [
	<mlbAttribute>
	^ tick_label
]

{ #category : #accessing }
MLBBarCommand >> tick_label: anObject [
	tick_label := anObject
]

{ #category : #accessing }
MLBBarCommand >> width [
	<mlbAttribute>
	^ width
]

{ #category : #accessing }
MLBBarCommand >> width: anObject [
	width := anObject
]

{ #category : #accessing }
MLBBarCommand >> xerr [
	<mlbAttribute>
	^ xerr
]

{ #category : #accessing }
MLBBarCommand >> xerr: anObject [
	xerr := anObject
]

{ #category : #accessing }
MLBBarCommand >> yerr [
	<mlbAttribute>
	^ yerr
]

{ #category : #accessing }
MLBBarCommand >> yerr: anObject [
	yerr := anObject
]
