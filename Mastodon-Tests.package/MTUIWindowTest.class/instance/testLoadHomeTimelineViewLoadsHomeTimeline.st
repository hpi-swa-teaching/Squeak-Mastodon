views-timelines
testLoadHomeTimelineViewLoadsHomeTimeline

	| window |
	window := MTUIWindow new.
	
	window loadHomeTimelineView.
	
	self assert: window viewMorph class equals: MTUIHomeTimeline