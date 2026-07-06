updating
testUpdateTootButtonDisabledForEmptyToot

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView tootTextArea contents: ''.
	newTootView
		media: {};
		updateTootButton.
	
	self deny: newTootView tootButton enabled