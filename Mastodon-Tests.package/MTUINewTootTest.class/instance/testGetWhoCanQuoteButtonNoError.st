render-buttons
testGetWhoCanQuoteButtonNoError

	| newTootView |
	newTootView := MTUINewToot new.
	
	self shouldnt: [newTootView getWhoCanQuoteButton] raise: Error