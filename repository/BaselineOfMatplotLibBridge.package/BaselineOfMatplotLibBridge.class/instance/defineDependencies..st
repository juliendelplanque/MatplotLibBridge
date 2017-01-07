baseline
defineDependencies: spec
	^ spec
		baseline: 'Atlas' with: [
			spec repository: 'github://kilon/Atlas'];
		baseline: 'Python3Generator' with: [
			spec repository: 'github://juliendelplanque/Python3Generator:master/repository'];
		yourself