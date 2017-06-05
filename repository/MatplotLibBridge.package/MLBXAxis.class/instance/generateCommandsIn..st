command generation
generateCommandsIn: aMLBCommandList
	super generateCommandsIn: aMLBCommandList.
	aMLBCommandList
		add: (self limCommandClass new
				xmin: self min;
				xmax: self max;
				yourself)