updating
testUpdateQuotePolicyDoesNotChangeForPublicVisibility

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView
		visibilitySetting: 'public';
		quotePolicySetting: 'followers';
		updateQuotePolicy.
	
	self assert: newTootView quotePolicySetting equals: 'followers'