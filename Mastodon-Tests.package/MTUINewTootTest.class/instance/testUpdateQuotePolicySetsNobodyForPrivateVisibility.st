updating
testUpdateQuotePolicySetsNobodyForPrivateVisibility

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView
		visibilitySetting: 'private';
		quotePolicySetting: 'public';
		updateQuotePolicy.
	
	self assert: newTootView quotePolicySetting equals: 'nobody'