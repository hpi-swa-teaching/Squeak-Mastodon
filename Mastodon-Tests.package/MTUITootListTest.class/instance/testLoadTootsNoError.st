updating
testLoadTootsNoError

	| timeline |
	timeline := self getTimeline.
	
	self shouldnt: [timeline loadToots] raise: Error