updating
testGetTootsCallsGetStatusesOf

	| timeline |
	timeline := self getTimeline.
	
	timeline getToots.
	
	self assert: self mastodonApi getStatusesOfCalled