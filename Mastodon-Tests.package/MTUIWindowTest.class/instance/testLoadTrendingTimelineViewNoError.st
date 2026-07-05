views-timelines
testLoadTrendingTimelineViewNoError

	| window |
	window := MTUIWindow new.
	
	self shouldnt: [window loadTrendingTimelineView] raise: Error