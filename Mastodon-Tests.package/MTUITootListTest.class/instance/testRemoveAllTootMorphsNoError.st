render
testRemoveAllTootMorphsNoError

	| timeline |
	timeline := self getTimeline.
	
	self shouldnt: [timeline removeAllTootMorphs] raise: Error