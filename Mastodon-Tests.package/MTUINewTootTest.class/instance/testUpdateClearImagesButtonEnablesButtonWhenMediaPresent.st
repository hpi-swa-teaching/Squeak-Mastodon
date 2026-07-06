updating
testUpdateClearImagesButtonEnablesButtonWhenMediaPresent

	| newTootView |
	newTootView := MTUINewToot new.
	newTootView
		media: {MTDataProvider firstMedia};
		updateClearImagesButton.
	
	self assert: newTootView clearImagesButton enabled