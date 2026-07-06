render-buttons
testGetPrivacyButtonsNoError

	| newTootView |
	newTootView := MTUINewToot new.
	
	self shouldnt: [ newTootView getPrivacyButtons ] raise: Error