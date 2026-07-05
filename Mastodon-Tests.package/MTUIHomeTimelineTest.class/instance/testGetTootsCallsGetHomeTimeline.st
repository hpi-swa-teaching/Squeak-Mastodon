updating
testGetTootsCallsGetHomeTimeline

	| timeline |
	timeline := self getTimeline.
	
	timeline getToots.
	
	self assert: self mastodonApi getHomeTimelineCalled