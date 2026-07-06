render
testGetMediaPreviewNoError

	| newTootView |
	newTootView := MTUINewToot new.
	
	self shouldnt: [newTootView getMediaPreview] raise: Error