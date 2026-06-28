tests
testLiveTimelineRefreshWantsSteps

	| live |
	live := MTUILiveTimeline new.
	
	self assert: live wantsSteps