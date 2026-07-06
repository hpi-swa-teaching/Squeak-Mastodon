render-buttons
testGetTootButtonClickCallsToot

	| newTootView button |
	newTootView := MTUINewTootClassTest new.
	button := newTootView getTootButton.
	
	button doClick.
	
	self assert: newTootView tootCalled