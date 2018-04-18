accessing
style: aString
	(MLBConstants isValidLineStyle: aString)
		ifFalse: [
			self error: ('Unknown line style. Please use one of the following: {1}'
								format: { MLBConstants lineStyles fold: [ :a :b | a,',',b ] }) ].
		
		style := aString