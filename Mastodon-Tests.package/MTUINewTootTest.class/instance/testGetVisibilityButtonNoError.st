render-buttons
testGetVisibilityButtonNoError

	| newTootView |
	newTootView := MTUINewToot new.
	
	self shouldnt: [newTootView getVisibilityButton] raise: Error