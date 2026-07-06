render-buttons
testGetImageButtonsNoError

	| newTootView |
	newTootView := MTUINewToot new.
	
	self shouldnt: [ newTootView getImageButtons ] raise: Error