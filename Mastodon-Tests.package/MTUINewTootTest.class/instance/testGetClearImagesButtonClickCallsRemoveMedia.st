render-buttons
testGetClearImagesButtonClickCallsRemoveMedia

	| newTootView button |
	newTootView := MTUINewTootClassTest new.
	button := newTootView getClearImagesButton.
	
	button doClick.
	
	self assert: newTootView removeMediaCalled