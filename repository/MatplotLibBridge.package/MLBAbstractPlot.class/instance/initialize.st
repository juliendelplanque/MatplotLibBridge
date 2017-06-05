initialization
initialize
	super initialize.
	self
		commandList: MLBCommandList new;
		title: '';
		annotations: OrderedCollection new;
		xAxis: MLBXAxis new;
		yAxis: MLBYAxis new