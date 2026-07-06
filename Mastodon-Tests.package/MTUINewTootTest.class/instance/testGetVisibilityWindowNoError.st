render
testGetVisibilityWindowNoError

	| newTootView |
	newTootView := MTUINewToot new.
	
	self shouldnt: [newTootView getVisibilityWindow] raise: Error