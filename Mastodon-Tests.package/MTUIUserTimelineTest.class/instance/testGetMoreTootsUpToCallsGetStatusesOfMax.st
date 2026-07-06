updating
testGetMoreTootsUpToCallsGetStatusesOfMax

	| timeline |
	timeline := self getTimeline.
	
	timeline getMoreTootsUpTo: 0.
	
	self assert: self mastodonApi getStatusesOfMaxCalled