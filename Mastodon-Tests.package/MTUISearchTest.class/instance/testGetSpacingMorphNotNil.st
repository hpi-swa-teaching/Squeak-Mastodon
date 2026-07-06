render
testGetSpacingMorphNotNil

	| searchView |
	searchView := MTUISearch new.
	
	self assert: searchView getSpacingMorph notNil