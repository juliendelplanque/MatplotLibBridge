baseline
defineDependencies: spec
	^ spec
		baseline: 'Atlas' with: [
			spec repository: 'github://kilon/Atlas'];
		yourself