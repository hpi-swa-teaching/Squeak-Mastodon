views-timelines
testLoadLiveTimelineViewLoadsLiveTimeline

	| window |
	window := MTUIWindow new.
	
	window loadLiveTimelineView.
	
	self assert: window viewMorph class equals: MTUILiveTimeline