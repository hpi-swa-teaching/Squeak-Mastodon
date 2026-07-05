actions
testResetAfterTootUpdatesCharacterLengthLabel

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView
		updateContent: 'Test';
		resetAfterToot.
	
	self
		assert: newTootView characterLengthLabel contents
		equals: '0/', newTootView maximumCharacterLength asString