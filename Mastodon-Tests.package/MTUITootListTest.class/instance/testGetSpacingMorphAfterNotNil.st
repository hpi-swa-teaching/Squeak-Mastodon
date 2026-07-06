render
testGetSpacingMorphAfterNotNil

	| timeline |
	timeline := self getTimeline.
	
	self assert: (timeline getSpacingMorphAfter: MTDataProvider firstToot) notNil