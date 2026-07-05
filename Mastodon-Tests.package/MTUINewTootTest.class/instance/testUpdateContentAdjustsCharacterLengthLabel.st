updating
testUpdateContentAdjustsCharacterLengthLabel

	| newTootView |
	newTootView := MTUINewToot new.
	newTootView updateContent: 'Test'.
	
	self assert: newTootView characterLengthLabel contents asString equals: '4/', newTootView maximumCharacterLength