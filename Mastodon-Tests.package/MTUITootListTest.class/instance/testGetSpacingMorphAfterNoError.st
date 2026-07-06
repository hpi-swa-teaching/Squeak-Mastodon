render
testGetSpacingMorphAfterNoError

	| timeline |
	timeline := self getTimeline.
	
	self shouldnt: [timeline getSpacingMorphAfter: MTDataProvider firstToot] raise: Error