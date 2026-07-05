updating
testGetTootsCallsGetLiveTimeline

	| timeline |
	timeline := self getTimeline.
	
	timeline getToots.
	
	self assert: self mastodonApi getLiveTimelineCalled