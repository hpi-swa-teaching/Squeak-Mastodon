render
testAddViewMorphNoError

	| window |
	window := MTUIWindow new.
	
	self shouldnt: [window addViewMorph] raise: Error