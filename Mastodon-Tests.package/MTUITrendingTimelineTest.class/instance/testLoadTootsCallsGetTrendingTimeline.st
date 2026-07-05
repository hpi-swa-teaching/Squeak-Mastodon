updating
testLoadTootsCallsGetTrendingTimeline

	| timeline |
	timeline := self getTimeline.
	
	timeline loadToots.
	
	self assert: self mastodonApi getTrendingTimelineCalled