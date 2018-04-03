accessing
scale: aString
	(self class isValidScale: aString)
		ifFalse: [ self error: ('Invalid scale: {1}' format: { aString }) ].
	
	scale := aString