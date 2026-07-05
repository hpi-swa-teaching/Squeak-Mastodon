render
testGetSearchTextFieldNoError

	| searchView |
	searchView := MTUISearch new.
	
	self shouldnt: [searchView getSearchTextField] raise: Error