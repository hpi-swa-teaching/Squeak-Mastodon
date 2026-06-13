tests
testLiveTimelineRefresh

	| live |
	live := MTUILiveTimeline new.
	self assert: live wantsSteps.
	self assert: live stepTime equals: 15000.