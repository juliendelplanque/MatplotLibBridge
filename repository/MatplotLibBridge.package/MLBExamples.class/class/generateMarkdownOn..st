accessing - documentation
generateMarkdownOn: aStream
	aStream
		<< '## How to use MatplotLibBridge?';
		<< Character lf;
		<< 'This page provides some examples to illustrate how to use MatplotLibBridge. For each example, the method `#show` is called when the plot is built. This method open an interactive window showing a preview of the plot. If you want to export the plot in a file, you can use `#generateIn:` which takes a `FileReference` as argument. This method creates an image file with a format corresponding to the extension of the file reference. The available formats are `.png`, `.svg` and `.pdf`. For example: `plot generateIn: ''/tmp/foo.png''` will generate the `plot` in the file `/tmp/foo.png` in png format.';
		<< Character lf;
		<< Character lf.
	self methodsWithExamplePragma
		do: [ :selector | 
			| method pragma |
			method := self class >> selector.
			pragma := method pragmaAt: self pragmaForExample.
			aStream
				<< '### ';
				<< (pragma argumentAt: 2);
				<< Character lf;
				<< (pragma argumentAt: 3);
				<< Character lf.
			self printCodeForExampleMethod: method on: aStream.
			aStream
				<< Character lf;
				<< '![';
				<< selector;
				<< '](https://raw.githubusercontent.com/juliendelplanque/MatplotLibBridge/master/plots/';
				<< selector;
				<< '.png)';
				<< Character lf;
				<< Character lf ]