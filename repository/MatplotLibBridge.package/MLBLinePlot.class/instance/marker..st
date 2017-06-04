accessing
marker: aString
	"One of the valid marker listed here: http://matplotlib.org/api/markers_api.html#module-matplotlib.markers."
	(self class isValidMarker: aString)
		ifFalse: [ self error: ('Unknown marker, please use one of the following: {1}' format: { self class markers fold: [ :a :b | a,',',b ] }) ].
	marker := aString