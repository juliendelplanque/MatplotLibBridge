baseline
definePackages: spec
	^ spec
		package: 'MatplotLibBridge' with: [ spec requires: #('Atlas' 'Python3Generator') ];
		yourself