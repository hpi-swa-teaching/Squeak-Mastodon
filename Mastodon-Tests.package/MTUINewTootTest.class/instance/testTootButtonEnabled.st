tests
testTootButtonEnabled

	| Model |
	Model := MTUINewToot new.
	
	self
		assert: Model tootTextArea contents size = 0 equals: Model tootButton enabled = false;
		assert: Model media isEmpty equals: Model tootButton enabled = false