views
loadTrendingTimelineView

	| trendingTimelineView |
	trendingTimelineView := MTUITrendingTimeline new.
	trendingTimelineView mastodonApi: self mastodonApi.
	trendingTimelineView loadToots ifFalse: [^ false].
	
	self loadView: trendingTimelineView as: #trendingTimelineView activate: #trendingTimelineButton.
	self layoutChanged