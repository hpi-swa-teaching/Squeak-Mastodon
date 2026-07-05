helpers
testAppendTootsNoError

	| timeline |
	timeline := self getTimeline.
	
	self shouldnt: [timeline appendToots: {MTDataProvider firstToot} asOrderedCollection] raise: Error