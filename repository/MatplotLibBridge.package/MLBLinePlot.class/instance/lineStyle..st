accessing
lineStyle: aString
	"A string may be one of the string in self class lineStyles."
	(self class isValidLineStyle: aString)
		ifFalse: [ self error: ('Unknown line style. Please use one of the following: {1}' format: { self class lineStyles fold: [ :a :b | a,',',b ] }) ].
	lineStyle := aString