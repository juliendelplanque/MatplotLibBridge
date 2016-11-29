*MatplotLibBridge
mlbWritePythonOn: aStream
	aStream << $[.
	self do: [ :item | item mlbWritePythonOn: aStream ] separatedBy: [ aStream << $, ].
	aStream << $]