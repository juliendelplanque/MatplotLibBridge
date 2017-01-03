accessing
mlbPositionalAttributes
	^ (self mlbPositionalAttributeAccessorsAndPositions
		select: [ :selector | (selector value: self) isNotNil ]
		thenCollect: [ :selector | selector -> (selector value: self) ]) asDictionary