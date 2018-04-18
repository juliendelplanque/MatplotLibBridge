verification
verifyArrowProperties: aDictionary
	(aDictionary includesKey: 'arrowstyle')
		ifFalse: [ ^ self ].
		
	(MLBConstants validArrowStyles includes: (aDictionary at: 'arrowstyle'))
		ifFalse: [ self error: 'Invalid arrow style, check MLBConstants>>#validArrowStyles.' ]