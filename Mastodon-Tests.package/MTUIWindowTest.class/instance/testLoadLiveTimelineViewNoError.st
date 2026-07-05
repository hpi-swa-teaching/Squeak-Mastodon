views-timelines
testLoadLiveTimelineViewNoError

	| window |
	window := MTUIWindow new.
	
	self shouldnt: [window loadLiveTimelineView] raise: Error