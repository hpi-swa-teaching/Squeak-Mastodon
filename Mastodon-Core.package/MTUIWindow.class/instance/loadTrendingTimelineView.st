views
loadTrendingTimelineView

	| trendingTimelineView |
	self mastodonApi hasToken ifFalse: [
		self informToLogIn.
		^ false].
	trendingTimelineView := MTUITrendingTimeline new.
	
	trendingTimelineView loadToots ifFalse: [^ false].
	
	self loadView: trendingTimelineView as: #trendingTimelineView activate: #trendingTimelineButton.
	self layoutChanged