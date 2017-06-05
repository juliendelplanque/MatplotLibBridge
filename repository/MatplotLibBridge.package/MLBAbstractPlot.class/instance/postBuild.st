building
postBuild
	self commandList
		add: (MLBTitleCommand new
				s: self title;
				fontdict: self titleFontDict;
				loc: self titleLocation;
				yourself);
		add: (MLBAxis new
					v: self axis;
					yourself).
	self xAxis generateCommandsIn: self commandList.
	self yAxis generateCommandsIn: self commandList.
	self annotations do: [ :annotation |
		annotation generateCommandsIn: self commandList ]