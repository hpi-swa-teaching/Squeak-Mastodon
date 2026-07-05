accessing
testUserTimelineIdAccessor

	| timeline |
	timeline := MTUIUserTimeline new.
	
	timeline id: '42'.
	self assert: timeline id equals: '42'