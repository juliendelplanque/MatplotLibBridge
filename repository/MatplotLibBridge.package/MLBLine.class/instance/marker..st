accessing
marker: aString
	(self isValidMarker: aString)
		ifFalse: [ 
			self error: ('Unknown marker, please use one of the following: {1}'
								format: { self class markers fold: [ :a :b | a,',',b ] }) ].
	
	marker := aString