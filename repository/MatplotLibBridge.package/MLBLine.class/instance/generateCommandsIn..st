command generation
generateCommandsIn: aMLBCommandList
	aMLBCommandList
		add:
			(MLBPlotCommand new
				x: self x;
				y: self y;
				linestyle: self style;
				marker: self marker;
				alpha: self alpha;
				color: self colorHexString;
				label: self label;
				linewidth: self width;
				yourself)