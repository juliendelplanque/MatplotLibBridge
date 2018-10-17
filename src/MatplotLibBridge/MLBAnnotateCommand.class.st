"
I am a wrapper for the matplotlib.annotate function.

- s : str

The text of the annotation

- xy : iterable

Length 2 sequence specifying the (x,y) point to annotate

- xytext : iterable, optional

Length 2 sequence specifying the (x,y) to place the text at. If None, defaults to xy.

- xycoords : str, Artist, Transform, callable or tuple, optional

The coordinate system that xy is given in.

For a str the allowed values are:

Property	Description
‘figure points’	points from the lower left of the figure
‘figure pixels’	pixels from the lower left of the figure
‘figure fraction’	fraction of figure from lower left
‘axes points’	points from lower left corner of axes
‘axes pixels’	pixels from lower left corner of axes
‘axes fraction’	fraction of axes from lower left
‘data’	use the coordinate system of the object being annotated (default)
‘polar’	(theta,r) if not native ‘data’ coordinates
If a Artist object is passed in the units are fraction if it’s bounding box.

If a Transform object is passed in use that to transform xy to screen coordinates

If a callable it must take a RendererBase object as input and return a Transform or Bbox object

If a tuple must be length 2 tuple of str, Artist, Transform or callable objects. The first transform is used for the x coordinate and the second for y.

See Advanced Annotation for more details.

Defaults to 'data'

- textcoords : str, Artist, Transform, callable or tuple, optional

The coordinate system that xytext is given, which may be different than the coordinate system used for xy.

All xycoords values are valid as well as the following strings:

Property	Description
‘offset points’	offset (in points) from the xy value
‘offset pixels’	offset (in pixels) from the xy value
defaults to the input of xycoords

- arrowprops : dict, optional

If not None, properties used to draw a FancyArrowPatch arrow between xy and xytext.

If arrowprops does not contain the key 'arrowstyle' the allowed keys are:

Key	Description
width	the width of the arrow in points
headwidth	the width of the base of the arrow head in points
headlength	the length of the arrow head in points
shrink	fraction of total length to ‘shrink’ from both ends
?	any key to matplotlib.patches.FancyArrowPatch
If the arrowprops contains the key 'arrowstyle' the above keys are forbidden. The allowed values of 'arrowstyle' are:

Name	Attrs
'-'	None
'->'	head_length=0.4,head_width=0.2
'-['	widthB=1.0,lengthB=0.2,angleB=None
'|-|'	widthA=1.0,widthB=1.0
'-|>'	head_length=0.4,head_width=0.2
'<-'	head_length=0.4,head_width=0.2
'<->'	head_length=0.4,head_width=0.2
'<|-'	head_length=0.4,head_width=0.2
'<|-|>'	head_length=0.4,head_width=0.2
'fancy'	head_length=0.4,head_width=0.4,tail_width=0.4
'simple'	head_length=0.5,head_width=0.5,tail_width=0.2
'wedge'	tail_width=0.3,shrink_factor=0.5
Valid keys for FancyArrowPatch are:

Key	Description
arrowstyle	the arrow style
connectionstyle	the connection style
relpos	default is (0.5, 0.5)
patchA	default is bounding box of the text
patchB	default is None
shrinkA	default is 2 points
shrinkB	default is 2 points
mutation_scale	default is text size (in points)
mutation_aspect	default is 1.
?	any key for matplotlib.patches.PathPatch
Defaults to None

- annotation_clip : bool, optional

Controls the visibility of the annotation when it goes outside the axes area.

If True, the annotation will only be drawn when the xy is inside the axes. If False, the annotation will always be drawn regardless of its position.

The default is None, which behave as True only if xycoords is “data”.
"
Class {
	#name : #MLBAnnotateCommand,
	#superclass : #MLBPyplotCommand,
	#instVars : [
		's',
		'xy',
		'xytext',
		'xycoords',
		'textcoords',
		'arrowprops',
		'annotation_clip'
	],
	#category : 'MatplotLibBridge-Commands'
}

{ #category : #accessing }
MLBAnnotateCommand >> annotation_clip [
	<mlbAttribute>
	^ annotation_clip
]

{ #category : #accessing }
MLBAnnotateCommand >> annotation_clip: anObject [
	annotation_clip := anObject
]

{ #category : #accessing }
MLBAnnotateCommand >> arrowprops [
	<mlbAttribute>
	^ arrowprops
]

{ #category : #accessing }
MLBAnnotateCommand >> arrowprops: anObject [
	arrowprops := anObject
]

{ #category : #accessing }
MLBAnnotateCommand >> functionName [
	^ 'annotate'
]

{ #category : #accessing }
MLBAnnotateCommand >> s [
	<mlbAttribute>
	^ s
]

{ #category : #accessing }
MLBAnnotateCommand >> s: anObject [
	s := anObject
]

{ #category : #accessing }
MLBAnnotateCommand >> textcoords [
	<mlbAttribute>
	^ textcoords
]

{ #category : #accessing }
MLBAnnotateCommand >> textcoords: anObject [
	textcoords := anObject
]

{ #category : #accessing }
MLBAnnotateCommand >> xy [
	<mlbAttribute>
	^ xy
]

{ #category : #accessing }
MLBAnnotateCommand >> xy: anObject [
	xy := anObject
]

{ #category : #accessing }
MLBAnnotateCommand >> xycoords [
	<mlbAttribute>
	^ xycoords
]

{ #category : #accessing }
MLBAnnotateCommand >> xycoords: anObject [
	xycoords := anObject
]

{ #category : #accessing }
MLBAnnotateCommand >> xytext [
	<mlbAttribute>
	^ xytext
]

{ #category : #accessing }
MLBAnnotateCommand >> xytext: anObject [
	xytext := anObject
]
