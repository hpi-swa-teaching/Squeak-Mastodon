actions
testRemoveMediaDisablesTootButtonWithoutText

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView
		media: {MTDataProvider emptyImageForm} asOrderedCollection;
		updateClearImagesButton;
		updateSelectImageButton;
		updateTootButton;
		removeMedia.
	
	self deny: newTootView tootButton enabled