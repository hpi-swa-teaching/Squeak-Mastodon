actions
testRemoveMediaKeepsTootButtonEnabledWithText

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView tootTextArea contents: 'Test'.
	newTootView
		media: {MTDataProvider emptyImageForm} asOrderedCollection;
		updateClearImagesButton;
		updateSelectImageButton;
		updateTootButton;
		removeMedia.
	
	self assert: newTootView tootButton enabled