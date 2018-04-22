baseline
defineGroups: spec
	spec
		group: 'default' with: #('MatplotLibBridge');
		group: 'atlas' with: #('default' 'MatplotLibBridge-Atlas')