updating
testUpdateSearchButtonDisablesButton

	| searchView |
	searchView := MTUISearch new.
	searchView searchTextField theText: ''.
	
	searchView updateSearchButton.
	
	self deny: searchView searchButton enabled