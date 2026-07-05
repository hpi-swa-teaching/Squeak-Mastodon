updating
testGetMoreTootsUpToCallsGetHomeTimelineMax

	| timeline |
	timeline := self getTimeline.
	
	timeline getMoreTootsUpTo: 0.
	
	self assert: self mastodonApi getHomeTimelineMaxCalled