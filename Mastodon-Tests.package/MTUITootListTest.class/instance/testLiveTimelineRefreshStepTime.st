tests
testLiveTimelineRefreshStepTime

	| live |
	live := MTUILiveTimeline new.
	live openInWorld.
	
	self assert: live stepTime equals: 15000.
	live delete.