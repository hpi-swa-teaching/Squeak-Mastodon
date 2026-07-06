render
testAddAccountMorphAddsToAccountMorphs

	| searchView morph |
	searchView := MTUISearch new.
	morph := Morph new.
	
	searchView addAccountMorph: morph.
	
	self assert: (searchView accountMorphs includes: morph).
	self assert: searchView accountMorphs size equals: 1