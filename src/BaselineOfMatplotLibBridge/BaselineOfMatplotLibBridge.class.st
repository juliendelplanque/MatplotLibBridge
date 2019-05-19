Class {
	#name : #BaselineOfMatplotLibBridge,
	#superclass : #BaselineOf,
	#category : 'BaselineOfMatplotLibBridge'
}

{ #category : #baseline }
BaselineOfMatplotLibBridge >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			self
				definePackages: spec;
				defineDependencies: spec;
				defineGroups: spec ]
]

{ #category : #baseline }
BaselineOfMatplotLibBridge >> defineDependencies: spec [
	^ spec
		baseline: 'Atlas' with: [
			spec repository: 'github://kilon/Atlas'];
		baseline: 'Python3Generator' with: [
			spec repository: 'github://juliendelplanque/Python3Generator:v2.0.0/src'];
		yourself
]

{ #category : #baseline }
BaselineOfMatplotLibBridge >> defineGroups: spec [
	spec
		group: 'default' with: #('MatplotLibBridge' 'MatplotLibBridge-Commands');
		group: 'atlas' with: #('default' 'MatplotLibBridge-Atlas')
]

{ #category : #baseline }
BaselineOfMatplotLibBridge >> definePackages: spec [
	^ spec
		package: 'MatplotLibBridge' with: [ spec requires: #('Python3Generator') ];
		package: 'MatplotLibBridge-Commands' with: [ spec requires: #('MatplotLibBridge' 'Python3Generator') ];
		package: 'MatplotLibBridge-Atlas' with: [ spec requires: #('Atlas' 'MatplotLibBridge') ];
		yourself
]
