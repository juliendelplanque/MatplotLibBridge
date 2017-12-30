accessing - documentation
generateMarkdown
	^ String streamContents: [ :stream |
		self generateMarkdownOn: stream ]