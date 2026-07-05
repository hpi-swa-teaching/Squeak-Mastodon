helpers
testAmountOfLoadedStatusesReturnsZeroForEmptyTimeline

	| timeline |
	timeline := self getTimeline.
	
	timeline toots: {} asOrderedCollection.
	
	self assert: timeline amountOfLoadedStatuses equals: 0