render-buttons
testGetPrivacyButtonsContainsButtons

	| newTootView privacyButtons |
	newTootView := MTUINewToot new.
	
	privacyButtons := newTootView getPrivacyButtons.
	
	self assert: (privacyButtons submorphs includes: newTootView visibilityButton).
	self assert: (privacyButtons submorphs includes: newTootView whoCanQuoteButton)