render
testGetCharacterLengthLabelNoError

	| newTootView |
	newTootView := MTUINewToot new.
	
	self shouldnt: [newTootView getCharacterLengthLabel] raise: Error