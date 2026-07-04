render-buttons
testGetSelectImageButtonClickCallsSelectImage

	| newTootView button |
	newTootView := MTUINewTootClassTest new.
	button := newTootView getSelectImageButton.
	
	button doClick.
	
	self assert: newTootView selectImageCalled