updating
testLoadMoreTootsCallsGetStatusesOfMax

	| timeline |
	timeline := self getTimeline.
	
	timeline loadMoreToots.
	
	self assert: self mastodonApi getStatusesOfMaxCalled