private
generatePlotForExampleMethod: aCompiledMethod in: aFileReference
	
	| lines code |
	lines := (aCompiledMethod sourceCode lines allButFirst: 2) allButLast asOrderedCollection.
	
	lines
		add: 'generateIn: ' , aFileReference storeString.
		
	code := lines joinUsing: String cr.
	
	Smalltalk compiler evaluate: code