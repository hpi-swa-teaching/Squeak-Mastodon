helpers
testAppendTootsAppendsToots

	| timeline |
	timeline := self getTimeline.
	timeline toots: {MTDataProvider firstToot} asOrderedCollection.
	
	timeline appendToots: {MTDataProvider secondToot} asOrderedCollection.
	
	self assert: timeline toots first equals: MTDataProvider firstToot.
	self assert: timeline toots second equals: MTDataProvider secondToot