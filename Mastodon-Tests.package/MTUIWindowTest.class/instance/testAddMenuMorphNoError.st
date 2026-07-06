render
testAddMenuMorphNoError

	| window |
	window := MTUIWindow new.
	
	self shouldnt: [window addMenuMorph] raise: Error