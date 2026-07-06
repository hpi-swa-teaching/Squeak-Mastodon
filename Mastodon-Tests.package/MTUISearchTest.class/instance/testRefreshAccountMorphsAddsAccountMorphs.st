actions
testRefreshAccountMorphsAddsAccountMorphs

	| searchView |
	searchView := MTUISearch new.
	searchView accounts: {MTDataProvider firstAccount. MTDataProvider secondAccount}.
	
	searchView refreshAccountMorphs.
	
	self assert: searchView accountMorphs size equals: 2