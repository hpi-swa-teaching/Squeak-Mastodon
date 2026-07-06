actions
testSearchCallsSearch

	| searchView |
	searchView := MTUISearch new.
	searchView searchTextField theText: MTDataProvider firstAccount displayName.
	
	searchView search.
	
	self assert: searchView mastodonApi searchCalled