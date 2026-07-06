render-buttons
testGetPrivacyButtonsNotNil

	| newTootView |
	newTootView := MTUINewToot new.
	
	self assert: newTootView getPrivacyButtons notNil