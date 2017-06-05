command generation
generateCommandsIn: aMLBCommandList
	|tempTicks|
	aMLBCommandList
		add: (self labelCommandClass new
					s: self title;
					yourself).
	tempTicks := self ticksCommandClass new
					rotation: self labelsRotation;
					yourself.
	self labels ifNotNil: [ 
		tempTicks
			ticks: (self ticks ifNil: [ (0 to: self labels size - 1) asArray ]);
			labels: self labels ].
	aMLBCommandList
		add: tempTicks