updating
testUpdateWhoCanQuoteButtonDisabledForDirectVisibility

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView
		visibilitySetting: 'direct';
		quotePolicySetting: 'nobody';
		updateWhoCanQuoteButton.
	
	self deny: newTootView whoCanQuoteButton enabled