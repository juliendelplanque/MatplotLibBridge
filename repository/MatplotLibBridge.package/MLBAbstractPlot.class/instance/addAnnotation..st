annotations
addAnnotation: aBlock
	| annotation |
	annotation := MLBAnnotation new.
	aBlock value: annotation.
	self annotations add: annotation