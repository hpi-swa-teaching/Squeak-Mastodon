updating
testUpdateTootButtonDisabledForTooManyImages

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView tootTextArea contents: ''.
	newTootView
		media: (Array new: newTootView maximumNumberOfAttachedImages + 1 withAll: MTDataProvider emptyImageForm);
		updateTootButton.
	
	self deny: newTootView tootButton enabled