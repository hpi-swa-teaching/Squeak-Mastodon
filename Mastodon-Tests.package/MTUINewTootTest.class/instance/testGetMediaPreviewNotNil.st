render
testGetMediaPreviewNotNil

	| newTootView |
	newTootView := MTUINewToot new.
	
	self assert: newTootView getMediaPreview notNil