views-timelines
testLoadTrendingTimelineViewLoadsTrendingTimeline

	| window |
	window := MTUIWindow new.
	
	window loadTrendingTimelineView.
	
	self assert: window viewMorph class equals: MTUITrendingTimeline