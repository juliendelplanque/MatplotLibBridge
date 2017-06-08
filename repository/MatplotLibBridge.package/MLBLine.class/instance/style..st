accessing
style: aString
	(self isValidLineStyle: aString)
		ifFalse: [
			self error: ('Unknown line style. Please use one of the following: {1}'
								format: { self class lineStyles fold: [ :a :b | a,',',b ] }) ].
		
		style := aString