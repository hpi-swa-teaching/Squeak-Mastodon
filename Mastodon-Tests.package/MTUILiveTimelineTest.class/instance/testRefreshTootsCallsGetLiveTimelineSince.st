updating
testRefreshTootsCallsGetLiveTimelineSince

	| timeline |
	timeline := self getTimeline.
	
	timeline refreshToots.
	
	self assert: self mastodonApi getLiveTimelineSinceCalled