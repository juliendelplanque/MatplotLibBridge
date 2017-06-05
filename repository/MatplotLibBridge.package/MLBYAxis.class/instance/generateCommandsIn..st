command generation
generateCommandsIn: aMLBCommandList
	super generateCommandsIn: aMLBCommandList.
	aMLBCommandList
		add: (self limCommandClass new
				ymin: self min;
				ymax: self max;
				yourself)