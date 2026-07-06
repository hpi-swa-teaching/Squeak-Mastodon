render
testRenderNoError

	| timeline |
	timeline := self getTimeline.
	
	self shouldnt: [timeline render] raise: Error