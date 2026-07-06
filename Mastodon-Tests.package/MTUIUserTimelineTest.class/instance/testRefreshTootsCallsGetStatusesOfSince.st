updating
testRefreshTootsCallsGetStatusesOfSince

	| timeline |
	timeline := self getTimeline.
	
	timeline refreshToots.
	
	self assert: self mastodonApi getStatusesOfSinceCalled