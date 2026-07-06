render
testAddAccountMorphAddsMorph

	| searchView morph |
	searchView := MTUISearch new.
	morph := Morph new.
	
	searchView addAccountMorph: morph.
	
	self assert: (searchView submorphs includes: morph)