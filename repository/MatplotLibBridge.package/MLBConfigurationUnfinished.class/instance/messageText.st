accessing
messageText
	^ '{1}>>{2} should not be nil, it has to be configured.' format: { self object class name . self selector }