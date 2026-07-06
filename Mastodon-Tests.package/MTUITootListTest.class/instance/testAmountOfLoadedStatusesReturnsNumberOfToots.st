helpers
testAmountOfLoadedStatusesReturnsNumberOfToots

	| timeline |
	timeline := self getTimeline.
	
	timeline toots: {MTDataProvider firstToot. MTDataProvider secondToot} asOrderedCollection.
	
	self assert: timeline amountOfLoadedStatuses equals: 2