helpers
testSetTootsSetsToots

	| timeline |
	timeline := self getTimeline.
	
	timeline setToots: {MTDataProvider firstToot. MTDataProvider secondToot} asOrderedCollection.
	
	self assert: timeline toots first equals: MTDataProvider firstToot.
	self assert: timeline toots second equals: MTDataProvider secondToot