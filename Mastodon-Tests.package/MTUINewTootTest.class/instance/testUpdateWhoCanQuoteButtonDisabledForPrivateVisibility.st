updating
testUpdateWhoCanQuoteButtonDisabledForPrivateVisibility

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView
		visibilitySetting: 'private';
		quotePolicySetting: 'nobody';
		updateWhoCanQuoteButton.
	
	self deny: newTootView whoCanQuoteButton enabled