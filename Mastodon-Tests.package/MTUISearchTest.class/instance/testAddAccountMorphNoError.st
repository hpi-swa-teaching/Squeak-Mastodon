render
testAddAccountMorphNoError

	| searchView morph |
	searchView := MTUISearch new.
	morph := Morph new.
	
	self shouldnt: [searchView addAccountMorph: morph] raise: Error