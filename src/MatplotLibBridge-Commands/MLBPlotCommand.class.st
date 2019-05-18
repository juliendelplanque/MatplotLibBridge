"
I am a wrapper for the matplotlib.pyplot.plot function.

From the documentation, I am configured with:
- alpha: float (0.0 transparent through 1.0 opaque)
- animated: [true | false]
- antialiased: [true | false]
- clip_on: [true | false]
- color: any matplotlib color
- dash_capstyle: [‘butt’ | ‘round’ | ‘projecting’]
- dash_joinstyle: [‘miter’ | ‘round’ | ‘bevel’]
- dashes: sequence of on/off ink in points
- drawstyle: [‘default’ | ‘steps’ | ‘steps-pre’ | ‘steps-mid’ | ‘steps-post’]
- fillstyle: [‘full’ | ‘left’ | ‘right’ | ‘bottom’ | ‘top’ | ‘none’]
- gid	: an id string
- label: string or anything printable with ‘%s’ conversion.
- linestyle: [‘solid’ | ‘dashed’, ‘dashdot’, ‘dotted’ | (offset, on-off-dash-seq) | '-' | '--' | '-.' | ':' | 'None' | ' ' | '']
- linewidth: float value in points
- marker: A valid marker style
- markeredgecolor: any matplotlib color
- markeredgewidth: float value in points
- markerfacecolor: any matplotlib color
- markerfacecoloralt: any matplotlib color
- markersize: float
- markevery: [None | int | length-2 tuple of int | slice | list/array of int | float | length-2 tuple of float]
- picker: float distance in points or callable pick
- pickradius: float distance in points
- rasterized: [true | false | nil]
- solid_capstyle: [‘butt’ | ‘round’ | ‘projecting’]
- solid_joinstyle: [‘miter’ | ‘round’ | ‘bevel’]
- url: a url string
- visible: [true | false]
- zorder: any number
"
Class {
	#name : #MLBPlotCommand,
	#superclass : #MLBPyplotCommand,
	#instVars : [
		'x',
		'y',
		'alpha',
		'animated',
		'antialiased',
		'clip_on',
		'color',
		'dash_capstyle',
		'dash_joinstyle',
		'dashes',
		'drawstyle',
		'fillstyle',
		'gid',
		'label',
		'linestyle',
		'linewidth',
		'marker',
		'markeredgecolor',
		'markeredgewidth',
		'markerfacecolor',
		'markerfacecoloralt',
		'markersize',
		'markevery',
		'picker',
		'pickradius',
		'rasterized',
		'solid_capstyle',
		'solid_joinstyle',
		'url',
		'visible',
		'zorder'
	],
	#category : #'MatplotLibBridge-Commands-Core'
}

{ #category : #accessing }
MLBPlotCommand >> alpha [
	<mlbAttribute>
	^ alpha
]

{ #category : #accessing }
MLBPlotCommand >> alpha: anObject [
	alpha := anObject
]

{ #category : #accessing }
MLBPlotCommand >> animated [
	<mlbAttribute>
	^ animated
]

{ #category : #accessing }
MLBPlotCommand >> animated: anObject [
	animated := anObject
]

{ #category : #accessing }
MLBPlotCommand >> antialiased [
	<mlbAttribute>
	^ antialiased
]

{ #category : #accessing }
MLBPlotCommand >> antialiased: anObject [
	antialiased := anObject
]

{ #category : #accessing }
MLBPlotCommand >> clip_on [
	<mlbAttribute>
	^ clip_on
]

{ #category : #accessing }
MLBPlotCommand >> clip_on: anObject [
	clip_on := anObject
]

{ #category : #accessing }
MLBPlotCommand >> color [
	<mlbAttribute>
	^ color
]

{ #category : #accessing }
MLBPlotCommand >> color: anObject [
	color := anObject
]

{ #category : #accessing }
MLBPlotCommand >> dash_capstyle [
	<mlbAttribute>
	^ dash_capstyle
]

{ #category : #accessing }
MLBPlotCommand >> dash_capstyle: anObject [
	dash_capstyle := anObject
]

{ #category : #accessing }
MLBPlotCommand >> dash_joinstyle [
	<mlbAttribute>
	^ dash_joinstyle
]

{ #category : #accessing }
MLBPlotCommand >> dash_joinstyle: anObject [
	dash_joinstyle := anObject
]

{ #category : #accessing }
MLBPlotCommand >> dashes [
	<mlbAttribute>
	^ dashes
]

{ #category : #accessing }
MLBPlotCommand >> dashes: anObject [
	dashes := anObject
]

{ #category : #accessing }
MLBPlotCommand >> drawstyle [
	<mlbAttribute>
	^ drawstyle
]

{ #category : #accessing }
MLBPlotCommand >> drawstyle: anObject [
	drawstyle := anObject
]

{ #category : #accessing }
MLBPlotCommand >> fillstyle [
	<mlbAttribute>
	^ fillstyle
]

{ #category : #accessing }
MLBPlotCommand >> fillstyle: anObject [
	fillstyle := anObject
]

{ #category : #accessing }
MLBPlotCommand >> functionName [
	^ 'plot'
]

{ #category : #accessing }
MLBPlotCommand >> gid [
	<mlbAttribute>
	^ gid
]

{ #category : #accessing }
MLBPlotCommand >> gid: anObject [
	gid := anObject
]

{ #category : #accessing }
MLBPlotCommand >> label [
	<mlbAttribute>
	^ label
]

{ #category : #accessing }
MLBPlotCommand >> label: anObject [
	label := anObject
]

{ #category : #accessing }
MLBPlotCommand >> linestyle [
	<mlbAttribute>
	^ linestyle
]

{ #category : #accessing }
MLBPlotCommand >> linestyle: anObject [
	linestyle := anObject
]

{ #category : #accessing }
MLBPlotCommand >> linewidth [
	<mlbAttribute>
	^ linewidth
]

{ #category : #accessing }
MLBPlotCommand >> linewidth: anObject [
	linewidth := anObject
]

{ #category : #accessing }
MLBPlotCommand >> marker [
	<mlbAttribute>
	^ marker
]

{ #category : #accessing }
MLBPlotCommand >> marker: anObject [
	marker := anObject
]

{ #category : #accessing }
MLBPlotCommand >> markeredgecolor [
	<mlbAttribute>
	^ markeredgecolor
]

{ #category : #accessing }
MLBPlotCommand >> markeredgecolor: anObject [
	markeredgecolor := anObject
]

{ #category : #accessing }
MLBPlotCommand >> markeredgewidth [
	<mlbAttribute>
	^ markeredgewidth
]

{ #category : #accessing }
MLBPlotCommand >> markeredgewidth: anObject [
	markeredgewidth := anObject
]

{ #category : #accessing }
MLBPlotCommand >> markerfacecolor [
	<mlbAttribute>
	^ markerfacecolor
]

{ #category : #accessing }
MLBPlotCommand >> markerfacecolor: anObject [
	markerfacecolor := anObject
]

{ #category : #accessing }
MLBPlotCommand >> markerfacecoloralt [
	<mlbAttribute>
	^ markerfacecoloralt
]

{ #category : #accessing }
MLBPlotCommand >> markerfacecoloralt: anObject [
	markerfacecoloralt := anObject
]

{ #category : #accessing }
MLBPlotCommand >> markersize [
	<mlbAttribute>
	^ markersize
]

{ #category : #accessing }
MLBPlotCommand >> markersize: anObject [
	markersize := anObject
]

{ #category : #accessing }
MLBPlotCommand >> markevery [
	<mlbAttribute>
	^ markevery
]

{ #category : #accessing }
MLBPlotCommand >> markevery: anObject [
	markevery := anObject
]

{ #category : #accessing }
MLBPlotCommand >> picker [
	<mlbAttribute>
	^ picker
]

{ #category : #accessing }
MLBPlotCommand >> picker: anObject [
	picker := anObject
]

{ #category : #accessing }
MLBPlotCommand >> pickradius [
	<mlbAttribute>
	^ pickradius
]

{ #category : #accessing }
MLBPlotCommand >> pickradius: anObject [
	pickradius := anObject
]

{ #category : #accessing }
MLBPlotCommand >> rasterized [
	<mlbAttribute>
	^ rasterized
]

{ #category : #accessing }
MLBPlotCommand >> rasterized: anObject [
	rasterized := anObject
]

{ #category : #accessing }
MLBPlotCommand >> solid_capstyle [
	<mlbAttribute>
	^ solid_capstyle
]

{ #category : #accessing }
MLBPlotCommand >> solid_capstyle: anObject [
	solid_capstyle := anObject
]

{ #category : #accessing }
MLBPlotCommand >> solid_joinstyle [
	<mlbAttribute>
	^ solid_joinstyle
]

{ #category : #accessing }
MLBPlotCommand >> solid_joinstyle: anObject [
	solid_joinstyle := anObject
]

{ #category : #accessing }
MLBPlotCommand >> url [
	<mlbAttribute>
	^ url
]

{ #category : #accessing }
MLBPlotCommand >> url: anObject [
	url := anObject
]

{ #category : #accessing }
MLBPlotCommand >> visible [
	<mlbAttribute>
	^ visible
]

{ #category : #accessing }
MLBPlotCommand >> visible: anObject [
	visible := anObject
]

{ #category : #accessing }
MLBPlotCommand >> x [
	<mlbAttribute: 1>
	^ x
]

{ #category : #accessing }
MLBPlotCommand >> x: anObject [
	x := anObject
]

{ #category : #accessing }
MLBPlotCommand >> y [
	<mlbAttribute: 2>
	^ y
]

{ #category : #accessing }
MLBPlotCommand >> y: anObject [
	y := anObject
]

{ #category : #accessing }
MLBPlotCommand >> zorder [
	<mlbAttribute>
	^ zorder
]

{ #category : #accessing }
MLBPlotCommand >> zorder: anObject [
	zorder := anObject
]
