actions
testResetAfterTootResetsButtons

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView
		updateContent: 'Test';
		media: {MTDataProvider emptyImageForm} asOrderedCollection;
		updateTootButton;
		updateClearImagesButton;
		updateSelectImageButton;
		resetAfterToot.
	
	self deny: newTootView tootButton enabled.
	self deny: newTootView clearImagesButton enabled.
	self assert: newTootView selectImageButton enabled