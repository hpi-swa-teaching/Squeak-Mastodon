views-timelines
testLoadHomeTimelineViewNoError

	| window |
	window := MTUIWindow new.
	
	self shouldnt: [window loadHomeTimelineView] raise: Error