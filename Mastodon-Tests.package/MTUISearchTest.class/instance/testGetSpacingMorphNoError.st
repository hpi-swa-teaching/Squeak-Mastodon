render
testGetSpacingMorphNoError

	| searchView |
	searchView := MTUISearch new.
	
	self shouldnt: [searchView getSpacingMorph] raise: Error