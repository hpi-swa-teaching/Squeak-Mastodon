updating
testUpdateWhoCanQuoteButtonForPublic

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView
		visibilitySetting: 'public';
		quotePolicySetting: 'public'.
	
	newTootView updateWhoCanQuoteButton.
	
	self
		assert: newTootView whoCanQuoteButton text
		equals: newTootView whoCanQuoteButtonText, (newTootView quotePolicyTranslations at: 'public').
	self assert: newTootView whoCanQuoteButton enabled