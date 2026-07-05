views-helpers
testUpdateViewMorphNoError

	| window |
	window := MTUIWindow new.
	
	self shouldnt: [window updateViewMorph: MTUINewToot new] raise: Error