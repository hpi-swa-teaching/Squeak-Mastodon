updating
testRefreshTootsCallsGetHomeTimelineSince

	| timeline |
	timeline := self getTimeline.
	
	timeline refreshToots.
	
	self assert: self mastodonApi getHomeTimelineSinceCalled