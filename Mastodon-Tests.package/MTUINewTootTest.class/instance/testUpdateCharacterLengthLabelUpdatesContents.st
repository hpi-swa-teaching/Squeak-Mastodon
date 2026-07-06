updating
testUpdateCharacterLengthLabelUpdatesContents

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView tootTextArea contents: 'Test'.
	newTootView updateCharacterLengthLabel.
	
	self
		assert: newTootView characterLengthLabel contents
		equals: '4/', newTootView maximumCharacterLength asString