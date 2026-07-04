accessing
testFreshTimelineHasNoCursorsOrWindow

	| timeline |
	timeline := MTUIHomeTimeline new.

	self assert: timeline maxID isNil.
	self assert: timeline minID isNil.
	self assert: timeline window isNil