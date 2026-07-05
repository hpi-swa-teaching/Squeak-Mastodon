helpers
testPrependTootsPrependsToots

	| timeline |
	timeline := self getTimeline.
	timeline toots: {MTDataProvider secondToot} asOrderedCollection.
	
	timeline prependToots: {MTDataProvider firstToot} asOrderedCollection.
	
	self assert: timeline toots first equals: MTDataProvider firstToot.
	self assert: timeline toots second equals: MTDataProvider secondToot