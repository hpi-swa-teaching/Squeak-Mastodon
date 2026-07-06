updating
testLoadMoreTootsCallsGetLiveTimelineMax

	| timeline |
	timeline := self getTimeline.
	
	timeline loadMoreToots.
	
	self assert: self mastodonApi getLiveTimelineMaxCalled