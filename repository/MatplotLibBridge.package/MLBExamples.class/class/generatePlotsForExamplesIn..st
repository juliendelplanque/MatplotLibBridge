example plots generation
generatePlotsForExamplesIn: aDirectoryFileReference
	self assert: aDirectoryFileReference isDirectory.
	
	self methodsWithExamplePragma do: [ :selector |
		self generatePlotForExampleMethod: (self class >> selector) in: aDirectoryFileReference / (selector , '.png') ]