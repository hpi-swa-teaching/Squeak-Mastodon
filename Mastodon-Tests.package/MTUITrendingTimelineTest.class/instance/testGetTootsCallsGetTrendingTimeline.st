updating
testGetTootsCallsGetTrendingTimeline

	| timeline |
	timeline := self getTimeline.
	
	timeline getToots.
	
	self assert: self mastodonApi getTrendingTimelineCalled