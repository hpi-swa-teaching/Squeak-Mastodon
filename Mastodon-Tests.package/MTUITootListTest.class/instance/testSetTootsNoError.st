helpers
testSetTootsNoError

	| timeline |
	timeline := self getTimeline.
	
	self shouldnt: [timeline setToots: {MTDataProvider firstToot} asOrderedCollection] raise: Error