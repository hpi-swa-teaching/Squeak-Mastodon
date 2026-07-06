updating
testLoadMoreTootsNoError

	| timeline |
	timeline := self getTimeline.
	
	self shouldnt: [timeline loadMoreToots] raise: Error