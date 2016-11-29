accessing
mlbAttributesDict
	^ (self mlbAttributeAccessors
		select: [ :selector | (selector value: self) isNotNil ]
		thenCollect: [ :selector | selector -> (selector value: self) ]) asDictionary