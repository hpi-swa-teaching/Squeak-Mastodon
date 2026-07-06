updating
testUpdateSearchButtonEnablesButton

	| searchView |
	searchView := MTUISearch new.
	searchView searchTextField theText: 'text'.
	
	searchView updateSearchButton.
	
	self assert: searchView searchButton enabled