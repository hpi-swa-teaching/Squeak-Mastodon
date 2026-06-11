tests
testSizeLabelsMatchTheirFields

	| settings |
	settings := MTUISettings new.
	self assert: settings usernameSizeLabel contents asString equals: '12/30'.
	self assert: settings descriptionSizeLabel contents asString equals: '15/160'