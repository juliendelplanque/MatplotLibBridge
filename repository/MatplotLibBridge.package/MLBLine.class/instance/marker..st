accessing
marker: aString
	(MLBConstants isValidMarker: aString)
		ifFalse: [ 
			self error: ('Unknown marker, please use one of the following: {1}'
								format: { MLBConstants markers fold: [ :a :b | a,',',b ] }) ].
	
	marker := aString