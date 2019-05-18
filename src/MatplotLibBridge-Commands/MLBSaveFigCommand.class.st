"
I am a wrapper for the matplotlib.pyplot.savefig function.

From the doc, I am configured with:

-filename (required!):
A string containing a path to a filename, or a Python file-like object, or possibly some backend-dependent object such as PdfPages.
If format is None and fname is a string, the output format is deduced from the extension of the filename. If the filename has no extension, the value of the rc parameter savefig.format is used.
If fname is not a string, remember to specify format to ensure that the correct backend is used.

-dpi: [ None | scalar > 0 | ‘figure’]
The resolution in dots per inch. If None it will default to the value savefig.dpi in the matplotlibrc file. If ‘figure’ it will set the dpi to be the value of the figure.

-facecolor, edgecolor:
the colors of the figure rectangle
orientation: [ ‘landscape’ | ‘portrait’ ]
not supported on all backends; currently only on postscript output

-papertype:
One of ‘letter’, ‘legal’, ‘executive’, ‘ledger’, ‘a0’ through ‘a10’, ‘b0’ through ‘b10’. Only supported for postscript output.

-format:
One of the file extensions supported by the active backend. Most backends support png, pdf, ps, eps and svg.

-transparent:
If True, the axes patches will all be transparent; the figure patch will also be transparent unless facecolor and/or edgecolor are specified via kwargs. This is useful, for example, for displaying a plot on top of a colored background on a web page. The transparency of these patches will be restored to their original values upon exit of this function.

-frameon:
If True, the figure patch will be colored, if False, the figure background will be transparent. If not provided, the rcParam ‘savefig.frameon’ will be used.

-bbox_inches:
Bbox in inches. Only the given portion of the figure is saved. If ‘tight’, try to figure out the tight bbox of the figure.

-pad_inches:
Amount of padding around the figure when bbox_inches is ‘tight’.
bbox_extra_artists:
A list of extra artists that will be considered when the tight bbox is calculated. 
"
Class {
	#name : #MLBSaveFigCommand,
	#superclass : #MLBPyplotCommand,
	#instVars : [
		'dpi',
		'facecolor',
		'edgecolor',
		'papertype',
		'format',
		'transparent',
		'frameon',
		'bbox_inches',
		'pad_inches',
		'fname'
	],
	#category : #'MatplotLibBridge-Commands-Core'
}

{ #category : #accessing }
MLBSaveFigCommand >> bbox_inches [
	<mlbAttribute>
	^ bbox_inches
]

{ #category : #accessing }
MLBSaveFigCommand >> bbox_inches: anObject [
	bbox_inches := anObject
]

{ #category : #accessing }
MLBSaveFigCommand >> dpi [
	<mlbAttribute>
	^ dpi
]

{ #category : #accessing }
MLBSaveFigCommand >> dpi: anObject [
	dpi := anObject
]

{ #category : #accessing }
MLBSaveFigCommand >> edgecolor [
	<mlbAttribute>
	^ edgecolor
]

{ #category : #accessing }
MLBSaveFigCommand >> edgecolor: anObject [
	edgecolor := anObject
]

{ #category : #accessing }
MLBSaveFigCommand >> facecolor [
	<mlbAttribute>
	^ facecolor
]

{ #category : #accessing }
MLBSaveFigCommand >> facecolor: anObject [
	facecolor := anObject
]

{ #category : #accessing }
MLBSaveFigCommand >> filename [
	"The argument has been renamed fname, this method is here for retro-compatibility purpose."
	^ self fname
]

{ #category : #accessing }
MLBSaveFigCommand >> filename: anObject [
	"The argument has been renamed fname, this method is here for retro-compatibility purpose."
	self fname: anObject
]

{ #category : #accessing }
MLBSaveFigCommand >> fname [
	<mlbAttribute>
	^ fname
]

{ #category : #accessing }
MLBSaveFigCommand >> fname: anObject [
	fname := anObject
]

{ #category : #accessing }
MLBSaveFigCommand >> format [
	<mlbAttribute>
	^ format
]

{ #category : #accessing }
MLBSaveFigCommand >> format: anObject [
	format := anObject
]

{ #category : #accessing }
MLBSaveFigCommand >> frameon [
	<mlbAttribute>
	^ frameon
]

{ #category : #accessing }
MLBSaveFigCommand >> frameon: anObject [
	frameon := anObject
]

{ #category : #accessing }
MLBSaveFigCommand >> functionName [
	^ 'savefig'
]

{ #category : #accessing }
MLBSaveFigCommand >> pad_inches [
	<mlbAttribute>
	^ pad_inches
]

{ #category : #accessing }
MLBSaveFigCommand >> pad_inches: anObject [
	pad_inches := anObject
]

{ #category : #accessing }
MLBSaveFigCommand >> papertype [
	<mlbAttribute>
	^ papertype
]

{ #category : #accessing }
MLBSaveFigCommand >> papertype: anObject [
	papertype := anObject
]

{ #category : #accessing }
MLBSaveFigCommand >> transparent [
	<mlbAttribute>
	^ transparent
]

{ #category : #accessing }
MLBSaveFigCommand >> transparent: anObject [
	transparent := anObject
]
