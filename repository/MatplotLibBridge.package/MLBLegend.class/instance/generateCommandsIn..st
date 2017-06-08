command generation
generateCommandsIn: aMLBCommandList
	aMLBCommandList
		add: (MLBLegendCommand new
					fontsize: self fontSize;
					framealpha: self frameTransparency;
					fancybox: self hasFancyBox;
					shadow: self hasShadow;
					loc: self location;
					ncol: self numberOfColumns;
					title: self title;
					yourself)