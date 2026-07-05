updating
testUpdateTootButtonDisabledForTooLongText

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView tootTextArea contents: (String new: newTootView maximumCharacterLength + 1 withAll: $a).
	newTootView
		media: {};
		updateTootButton.
	
	self deny: newTootView tootButton enabled