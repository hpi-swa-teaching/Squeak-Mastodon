updating
testLoadMoreTootsCallsGetTrendingTimelineMax

	| timeline |
	timeline := self getTimeline.
	
	timeline loadMoreToots.
	
	self assert: self mastodonApi getTrendingTimelineMaxCalled