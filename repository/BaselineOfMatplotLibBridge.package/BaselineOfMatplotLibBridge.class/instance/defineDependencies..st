baseline
defineDependencies: spec
	^ spec
		project: 'Atlas' with: [
			spec repository: 'github://kilon/Atlas'];
		yourself