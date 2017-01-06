translating
generate
	"Returns the Python 3 code generated."
	^ String streamContents: [ :stream |
		self mlbWritePythonOn: stream ]