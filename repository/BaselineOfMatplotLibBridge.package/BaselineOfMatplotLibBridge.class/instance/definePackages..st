baseline
definePackages: spec
	^ spec
		package: 'MatplotLibBridge' with: [ spec requires: #('Python3Generator') ];
		package: 'MatplotLibBridge-Atlas' with: [ spec requires: #('Atlas' 'MatplotLibBridge') ];
		yourself