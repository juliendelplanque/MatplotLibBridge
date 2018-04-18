accessing
isValidMarker: aString
	^ (self markers includes: aString)
			or: [ aString matchesRegex: '\$.+\$' ]