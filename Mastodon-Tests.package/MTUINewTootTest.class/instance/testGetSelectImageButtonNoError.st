render-buttons
testGetSelectImageButtonNoError

	| newTootView |
	newTootView := MTUINewToot new.
	
	self shouldnt: [newTootView getSelectImageButton] raise: Error