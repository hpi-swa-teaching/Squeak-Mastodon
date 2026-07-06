updating
testLoadMoreTootsCallsGetHomeTimelineMax

	| timeline |
	timeline := self getTimeline.
	
	timeline loadMoreToots.
	
	self assert: self mastodonApi getHomeTimelineMaxCalled