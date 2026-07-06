actions
testRefreshAccountMorphsNoError

	| searchView |
	searchView := MTUISearch new.
	
	self shouldnt: [searchView refreshAccountMorphs] raise: Error