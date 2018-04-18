accessing
marker: aString
	(MLBConstants isValidMarker: aString)
		ifFalse: [ self error: MLBConstants unknownMarkerErrorMessage ].
	marker := aString