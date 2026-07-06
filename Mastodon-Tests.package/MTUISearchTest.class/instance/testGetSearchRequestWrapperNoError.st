render
testGetSearchRequestWrapperNoError

	| searchView |
	searchView := MTUISearch new.
	
	self shouldnt: [searchView getSearchRequestWrapper] raise: Error