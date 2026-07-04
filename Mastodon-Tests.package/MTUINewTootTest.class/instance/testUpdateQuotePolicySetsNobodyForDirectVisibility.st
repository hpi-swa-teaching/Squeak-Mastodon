updating
testUpdateQuotePolicySetsNobodyForDirectVisibility

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView
		visibilitySetting: 'direct';
		quotePolicySetting: 'public';
		updateQuotePolicy.
	
	self assert: newTootView quotePolicySetting equals: 'nobody'