render
testGetSearchRequestWrapperNotNil

	| searchView |
	searchView := MTUISearch new.
	
	self assert: searchView getSearchRequestWrapper notNil