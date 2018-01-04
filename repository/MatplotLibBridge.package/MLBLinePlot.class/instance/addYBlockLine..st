adding
addYBlockLine: aBlock
	| line |
	line := MLBYBlockLine new.
	aBlock value: line.
	self lines add: line