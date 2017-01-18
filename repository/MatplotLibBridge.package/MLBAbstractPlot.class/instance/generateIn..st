generating
generateIn: aFileReference
	self build.
	self commandList 
		add: (MLBSaveFigCommand new
					filename: aFileReference fullName;
					bbox_inches: 'tight';
					yourself).
	self execute