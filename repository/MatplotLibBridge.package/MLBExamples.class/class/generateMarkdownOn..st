accessing - documentation
generateMarkdownOn: aStream
	aStream
		<< '# How to use MatplotLibBridge?';
		<< Character lf;
		<< 'This page provides some examples to illustrate how to use MatplotLibBridge.';
		<< Character lf;
		<< Character lf.
	self methodsWithExamplePragma
		do: [ :selector | 
			| method pragma |
			method := self class >> selector.
			pragma := method pragmaAt: self pragmaForExample.
			aStream
				<< '## ';
				<< (pragma argumentAt: 2);
				<< Character lf;
				<< (pragma argumentAt: 3);
				<< Character lf.
			self printCodeForExampleMethod: method on: aStream.
			aStream << Character lf ]