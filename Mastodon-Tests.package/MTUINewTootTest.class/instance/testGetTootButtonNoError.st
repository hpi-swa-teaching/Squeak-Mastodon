render-buttons
testGetTootButtonNoError

	| newTootView |
	newTootView := MTUINewToot new.
	
	self shouldnt: [newTootView getTootButton] raise: Error