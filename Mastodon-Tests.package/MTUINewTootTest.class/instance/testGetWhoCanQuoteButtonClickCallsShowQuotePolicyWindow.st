render-buttons
testGetWhoCanQuoteButtonClickCallsShowQuotePolicyWindow

	| newTootView button |
	newTootView := MTUINewTootClassTest new.
	button := newTootView getWhoCanQuoteButton.
	
	button doClick.
	
	self assert: newTootView showQuotePolicyWindowCalled