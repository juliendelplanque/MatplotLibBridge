accessing
mlbPositionalAttributeAccessorsAndPositions
	^ (Pragma allNamed: #mlbAttribute: in: self class)
			select: [ :p | (p selector value: self) isNotNil ]
			thenCollect: [ :p | (p selector value: self) -> p arguments first ]