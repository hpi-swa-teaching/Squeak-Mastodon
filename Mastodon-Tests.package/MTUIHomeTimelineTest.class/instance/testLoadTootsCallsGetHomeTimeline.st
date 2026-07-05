updating
testLoadTootsCallsGetHomeTimeline

	| timeline |
	timeline := self getTimeline.
	
	timeline loadToots.
	
	self assert: self mastodonApi getHomeTimelineCalled