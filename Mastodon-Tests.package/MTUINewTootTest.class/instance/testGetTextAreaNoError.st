render
testGetTextAreaNoError

	| newTootView |
	newTootView := MTUINewToot new.
	
	self shouldnt: [newTootView getTextArea] raise: Error