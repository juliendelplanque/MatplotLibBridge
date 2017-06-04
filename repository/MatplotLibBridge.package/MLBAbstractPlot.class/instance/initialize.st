initialization
initialize
	super initialize.
	self
		commandList: MLBCommandList new;
		title: '';
		xAxisTitle: '';
		yAxisTitle: '';
		annotations: OrderedCollection new