accessing
gridOnAxis: aString
	(self class isValidGrid: aString)
		ifFalse: [ self error: ('Invalid grid: {1}' format: { aString }) ].
	gridOnAxis := aString