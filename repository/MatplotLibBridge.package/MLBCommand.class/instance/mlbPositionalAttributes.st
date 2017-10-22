accessing
mlbPositionalAttributes
	^ (((Pragma allNamed: #mlbAttribute: in: self class)
		select: [ :p | (p methodSelector value: self) isNotNil ]
		thenCollect: [ :p | (p methodSelector value: self) -> p arguments first ])
		sorted: [ :a :b | a tail < b tail ]) collect: #head