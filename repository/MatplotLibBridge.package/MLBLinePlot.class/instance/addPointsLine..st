adding
addPointsLine: aBlock
	| line |
	line := MLBPointsLine new.
	aBlock value: line.
	self lines add: line