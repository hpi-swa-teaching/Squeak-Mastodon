render-buttons
testGetClearImagesButtonNotNil

	| newTootView |
	newTootView := MTUINewToot new.
	
	self assert: newTootView getClearImagesButton notNil