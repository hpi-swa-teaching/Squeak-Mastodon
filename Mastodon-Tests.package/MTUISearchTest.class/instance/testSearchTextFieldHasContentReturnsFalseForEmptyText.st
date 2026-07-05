helpers
testSearchTextFieldHasContentReturnsFalseForEmptyText

	| searchView |
	searchView := MTUISearch new.
	
	searchView searchTextField theText: ''.
	
	self deny: searchView searchTextFieldHasContent