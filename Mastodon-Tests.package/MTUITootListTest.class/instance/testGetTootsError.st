updating-subclass
testGetTootsError

	| timeline |
	timeline := self getTimeline.
	
	self shouldnt: [timeline getToots] raise: Error