adding
addLine: aBlock
	self
		deprecated: 'Please use #addPointsLine: instead'
		transformWith: '`@receiver addLine: `@statements' -> '`@receiver addPointsLine: `@statements'.
	self addPointsLine: aBlock