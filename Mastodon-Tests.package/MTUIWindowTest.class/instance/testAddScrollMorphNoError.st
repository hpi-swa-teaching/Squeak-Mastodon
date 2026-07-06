render
testAddScrollMorphNoError

	| window |
	window := MTUIWindow new.
	
	self shouldnt: [window addScrollMorph] raise: Error