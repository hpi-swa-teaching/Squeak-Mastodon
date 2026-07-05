updating
testRefreshTootsNoError

	| timeline |
	timeline := self getTimeline.
	
	self shouldnt: [timeline refreshToots] raise: Error