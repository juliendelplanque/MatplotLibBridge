building
inBuild
	self commandList
		add: (MLBBoxplotCommand new
					x: self dataList;
					labels: self labels;
					vert: self vertical;
					yourself)