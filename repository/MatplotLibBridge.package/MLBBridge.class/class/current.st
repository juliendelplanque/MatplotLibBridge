accessing
current
	^ current ifNil: [ current := MLBAtlasBridge ]