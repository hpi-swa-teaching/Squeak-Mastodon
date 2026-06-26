tests
testLiveTimelineRefreshStepTime

	| live |
	live := MTUILiveTimeline new.
	
	self assert: live stepTime equals: 15000