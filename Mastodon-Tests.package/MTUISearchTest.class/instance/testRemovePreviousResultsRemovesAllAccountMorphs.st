actions
testRemovePreviousResultsRemovesAllAccountMorphs

	| searchView firstMorph secondMorph |
	firstMorph := Morph new.
	secondMorph := Morph new.
	
	searchView := MTUISearch new.
	searchView
		addAccountMorph: firstMorph;
		addAccountMorph: secondMorph.
	
	searchView removePreviousResults.
	
	self deny: (searchView submorphs includes: firstMorph).
	self deny: (searchView submorphs includes: secondMorph).
	self assert: searchView accountMorphs isEmpty