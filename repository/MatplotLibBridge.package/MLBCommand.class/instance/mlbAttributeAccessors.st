accessing
mlbAttributeAccessors
	^ (Pragma allNamed: #mlbAttribute in: self class) collect: #selector