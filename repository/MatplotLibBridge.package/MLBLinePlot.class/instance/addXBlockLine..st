adding
addXBlockLine: aBlock
	| line |
	line := MLBXBlockLine new.
	aBlock value: line.
	self lines add: line