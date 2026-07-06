updating
testUpdateQuotePolicyDoesNotChangeForUnlistedVisibility

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView
		visibilitySetting: 'unlisted';
		quotePolicySetting: 'followers';
		updateQuotePolicy.
	
	self assert: newTootView quotePolicySetting equals: 'followers'