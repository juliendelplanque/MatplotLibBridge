accessing - documentation
generateMarkdown
	^ String streamContents: [ :stream |
		self methodsWithExamplePragma do: [ :selector | 
			|method pragma|
			method := self class >> selector.
			pragma := method pragmaAt: self pragmaForExample.
			stream
				<< '## ';
				<< (pragma argumentAt: 2);
				<< Character lf;
				<< (pragma argumentAt: 3);
				<< Character lf.
			self printCodeForExampleMethod: method on: stream.
			stream
				<< Character lf ] ]