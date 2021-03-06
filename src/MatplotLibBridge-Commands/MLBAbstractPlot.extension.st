Extension { #name : #MLBAbstractPlot }

{ #category : #'*MatplotLibBridge-Commands' }
MLBAbstractPlot >> commandsList [
	^ MLBCommandListGenerator new
			visit: self;
			commandList
]

{ #category : #'*MatplotLibBridge-Commands' }
MLBAbstractPlot >> generateIn: aFileReference [
	self commandsList
		add: (MLBSaveFigCommand new
					filename: aFileReference fullName;
					bbox_inches: 'tight';
					transparent: true;
					yourself);
		executeOptimized
]

{ #category : #'*MatplotLibBridge-Commands' }
MLBAbstractPlot >> gtInspectorPython3CodeIn: composite [
	<gtInspectorPresentationOrder: -10>
	composite text
		title: 'Python 3 code';
		display: [ 
			(self commandsList)
				optimizeGeneratedInstructions
					generate ]
]

{ #category : #'*MatplotLibBridge-Commands' }
MLBAbstractPlot >> show [
	self commandsList
		add: MLBShowCommand new;
		executeOptimized
]
