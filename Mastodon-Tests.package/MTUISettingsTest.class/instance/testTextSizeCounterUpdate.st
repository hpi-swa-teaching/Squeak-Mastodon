tests
testTextSizeCounterUpdate

	| settings |
	settings := MTUISettings new.
	settings usernameUpdateTextField contents: 'test'.
	settings descriptionTextField contents: 'hpi123'.
	settings updateTextSize.
	self assert: settings usernameSizeLabel contents asString equals: '4/30'.
	self assert: settings descriptionSizeLabel contents asString equals: '6/160'