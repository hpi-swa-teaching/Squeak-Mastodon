actions
testRemoveMediaDoesNotChangeQuotePolicySetting

	| newTootView quotePolicy |
	newTootView := MTUINewToot new.
	
	newTootView
		quotePolicySetting: 'followers';
		media: {MTDataProvider emptyImageForm} asOrderedCollection.
	
	quotePolicy := newTootView quotePolicySetting.
	
	newTootView removeMedia.
	
	self assert: newTootView quotePolicySetting equals: quotePolicy