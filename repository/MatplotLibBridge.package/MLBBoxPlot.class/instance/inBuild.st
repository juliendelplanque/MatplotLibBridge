building
inBuild
	self commandList
		add: (MLBBoxplot new
					x: self dataList;
					labels: self labels;
					vert: self vertical;
					yourself)