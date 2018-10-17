building
inBuild
	((self data groupedBy: #marker) associations
		sorted: [ :a :b | 
			(self markersOrder indexOf: a key) < (self markersOrder indexOf: b key) ])
		do: [ :assoc |
		|marker scatterData|
		marker := assoc key.
		scatterData := assoc value.
		self commandList
		add:
			(MLBScatterCommand new
				x: (scatterData collect: #x);
				y: (scatterData collect: #y);
				s: (scatterData collect: #size);
				c: (scatterData collect: #color);
				marker: marker;
				yourself) ]