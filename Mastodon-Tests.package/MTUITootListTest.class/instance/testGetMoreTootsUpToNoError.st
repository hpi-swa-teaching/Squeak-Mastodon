updating-subclass
testGetMoreTootsUpToNoError

	| timeline |
	timeline := self getTimeline.
	
	self shouldnt: [timeline getMoreTootsUpTo: 0] raise: Error