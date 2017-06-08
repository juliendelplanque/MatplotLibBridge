adding
addLine: aBlock
	| line |
	line := MLBLine new.
	aBlock value: line.
	self lines add: line