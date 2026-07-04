updating
testUpdateSelectImageButtonEnablesButton

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView
		media: {};
		updateSelectImageButton.
	
	self assert: newTootView selectImageButton enabled