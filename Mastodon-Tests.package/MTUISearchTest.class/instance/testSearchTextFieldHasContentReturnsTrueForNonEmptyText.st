helpers
testSearchTextFieldHasContentReturnsTrueForNonEmptyText

	| searchView |
	searchView := MTUISearch new.
	
	searchView searchTextField theText: MTDataProvider firstAccount username.
	
	self assert: searchView searchTextFieldHasContent