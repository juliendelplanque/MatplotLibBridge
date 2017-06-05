verification
verifyArrowProperties: aDictionary
	(aDictionary includesKey: 'arrowstyle')
		ifFalse: [ ^ self ].
		
	(self class validArrowStyles includes: (aDictionary at: 'arrowstyle'))
		ifFalse: [ self error: 'Invalid arrow style, check MLBAnnotation>>#validArrowStyles.' ]