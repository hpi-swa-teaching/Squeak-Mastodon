updating
testUpdateWhoCanQuoteButtonRaisesErrorForInvalidQuotePolicy

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView visibilitySetting: 'public'.
	
	self should: [newTootView quotePolicySetting: 'invalid'] raise: Error.
	
	self should: [newTootView updateWhoCanQuoteButton] raise: Error