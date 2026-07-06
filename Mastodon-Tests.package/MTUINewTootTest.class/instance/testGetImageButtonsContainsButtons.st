render-buttons
testGetImageButtonsContainsButtons

	| newTootView imageButtons |
	newTootView := MTUINewToot new.
	
	imageButtons := newTootView getImageButtons.
	
	self assert: (imageButtons submorphs includes: newTootView selectImageButton).
	self assert: (imageButtons submorphs includes: newTootView clearImagesButton)