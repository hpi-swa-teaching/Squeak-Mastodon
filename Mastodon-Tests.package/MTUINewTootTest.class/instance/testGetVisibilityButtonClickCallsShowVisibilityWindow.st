render-buttons
testGetVisibilityButtonClickCallsShowVisibilityWindow

	| newTootView button |
	newTootView := MTUINewTootClassTest new.
	button := newTootView getVisibilityButton.
	
	button doClick.
	
	self assert: newTootView showVisibilityWindowCalled