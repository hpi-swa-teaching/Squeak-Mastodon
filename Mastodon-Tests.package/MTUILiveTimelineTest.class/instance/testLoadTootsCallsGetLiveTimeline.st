updating
testLoadTootsCallsGetLiveTimeline

	| timeline |
	timeline := self getTimeline.
	
	timeline loadToots.
	
	self assert: self mastodonApi getLiveTimelineCalled