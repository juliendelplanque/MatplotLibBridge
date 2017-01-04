accessing
alpha: aFloat
	(aFloat between: 0 and: 1)
		ifFalse: [ self error: 'Alpha value must be in range [0,1].' ].
	alpha := aFloat