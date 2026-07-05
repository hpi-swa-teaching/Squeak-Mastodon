render
testGetSearchTitleNoError

	| searchView |
	searchView := MTUISearch new.
	
	self shouldnt: [searchView getSearchTitle] raise: Error