views-timelines
loadTrendingTimelineView

	self ensureLoggedIn ifFalse: [^ false].
	
	self loadView: MTUITrendingTimeline new as: #trendingTimelineView activate: #trendingTimelineButton