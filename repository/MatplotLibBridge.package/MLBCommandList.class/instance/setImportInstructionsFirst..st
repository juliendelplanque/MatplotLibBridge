optimizing
setImportInstructionsFirst: aP3GInstructionsList
	| weights |
	weights := Dictionary new.
	aP3GInstructionsList instructions doWithIndex: [ :instruction :index |
		instruction isImport
			ifTrue: [ weights at: instruction put: 0 ]
			ifFalse: [ weights at: instruction put: index ] ].
	
	aP3GInstructionsList instructions sort: [ :a :b |
		(weights at: a) < (weights at: b) ]
	
	