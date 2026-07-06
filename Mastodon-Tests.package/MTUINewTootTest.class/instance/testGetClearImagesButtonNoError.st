render-buttons
testGetClearImagesButtonNoError

	| newTootView |
	newTootView := MTUINewToot new.
	
	self shouldnt: [newTootView getClearImagesButton] raise: Error