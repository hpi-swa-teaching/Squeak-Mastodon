updating
testLoadTootsCallsGetStatusesOf

	| timeline |
	timeline := self getTimeline.
	
	timeline loadToots.
	
	self assert: self mastodonApi getStatusesOfCalled