render
testAddAllTootsNoError

	| timeline |
	timeline := self getTimeline.
	
	self shouldnt: [timeline addAllToots] raise: Error