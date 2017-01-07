generating
generateIn: aFileReference
	self build.
	self commandList 
		add: (MLBSaveFig new
					filename: aFileReference fullName;
					bbox_inches: 'tight';
					yourself).
	self execute