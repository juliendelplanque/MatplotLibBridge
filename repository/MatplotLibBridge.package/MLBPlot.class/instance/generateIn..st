generating
generateIn: aFileReference
	self build.
	MLBSaveFig new
		filename: aFileReference fullName;
		executeUsingBridge: self bridge