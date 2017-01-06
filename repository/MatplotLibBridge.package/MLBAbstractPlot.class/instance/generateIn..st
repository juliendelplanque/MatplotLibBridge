generating
generateIn: aFileReference
	self build.
	MLBSaveFig new
		filename: aFileReference fullName;
		bbox_inches: 'tight';
		execute