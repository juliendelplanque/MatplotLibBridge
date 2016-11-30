executing
executeOn: aMLBRemoteVariable usingBridge: aMLBBridge
	| resultRemoteVar |
	resultRemoteVar := MLBRemoteVariable new.
	aMLBBridge
		executePythonCode: ('{1} = {2}[{3}]' format: ({ resultRemoteVar . aMLBRemoteVariable . self index } collect: [ :object | String streamContents: [ :s | object mlbWritePythonOn: s ] ])).
	^ resultRemoteVar