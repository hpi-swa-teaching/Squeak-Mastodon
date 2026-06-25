tests
testTootButtonEnabled

	| Model |
	Model := MTUINewToot new.
	
	self
		assert: Model tootTextArea contents size = 0 equals: Model sendButton enabled = false;
		assert: Model media isEmpty equals: Model sendButton enabled = false