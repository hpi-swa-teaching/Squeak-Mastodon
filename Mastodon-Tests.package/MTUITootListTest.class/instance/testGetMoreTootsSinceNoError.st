updating-subclass
testGetMoreTootsSinceNoError

	| timeline |
	timeline := self getTimeline.
	
	self shouldnt: [timeline getMoreTootsSince: 0] raise: Error