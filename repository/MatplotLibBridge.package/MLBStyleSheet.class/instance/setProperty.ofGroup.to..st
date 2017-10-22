initialization
setProperty: propertyName ofGroup: groupName to: anObject
	self
		addRcCommand:
			(MLBRcCommand new
				group: groupName;
				setProperty: propertyName to: anObject;
				yourself)