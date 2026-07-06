updating
testUpdateWhoCanQuoteButtonForFollowers

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView
		visibilitySetting: 'public';
		quotePolicySetting: 'followers'.
	
	newTootView updateWhoCanQuoteButton.
	
	self
		assert: newTootView whoCanQuoteButton text
		equals: newTootView whoCanQuoteButtonText, (newTootView quotePolicyTranslations at: 'followers').
	self assert: newTootView whoCanQuoteButton enabled