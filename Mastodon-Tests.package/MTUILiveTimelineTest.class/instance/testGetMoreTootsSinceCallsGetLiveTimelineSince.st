updating
testGetMoreTootsSinceCallsGetLiveTimelineSince

	| timeline |
	timeline := self getTimeline.
	
	timeline getMoreTootsSince: 0.
	
	self assert: self mastodonApi getLiveTimelineSinceCalled