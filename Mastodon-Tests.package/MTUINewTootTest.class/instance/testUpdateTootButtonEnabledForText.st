updating
testUpdateTootButtonEnabledForText

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView tootTextArea contents: 'Test'.
	newTootView
		media: {};
		updateTootButton.
	
	self assert: newTootView tootButton enabled