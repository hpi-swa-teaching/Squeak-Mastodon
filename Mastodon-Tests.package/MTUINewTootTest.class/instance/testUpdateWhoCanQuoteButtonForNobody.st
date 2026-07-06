updating
testUpdateWhoCanQuoteButtonForNobody

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView
		visibilitySetting: 'public';
		quotePolicySetting: 'nobody'.
	
	newTootView updateWhoCanQuoteButton.
	
	self
		assert: newTootView whoCanQuoteButton text
		equals: newTootView whoCanQuoteButtonText, (newTootView quotePolicyTranslations at: 'nobody').
	self assert: newTootView whoCanQuoteButton enabled