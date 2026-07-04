render-buttons
testGetWhoCanQuoteButtonNotNil

	| newTootView |
	newTootView := MTUINewToot new.
	
	self assert: newTootView getWhoCanQuoteButton notNil