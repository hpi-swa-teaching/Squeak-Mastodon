helpers
testPrependTootsNoError

	| timeline |
	timeline := self getTimeline.
	
	self shouldnt: [timeline prependToots: {MTDataProvider firstToot} asOrderedCollection] raise: Error