render
testGetSearchRequestWrapper

	| searchView requestWrapper |
	searchView := MTUISearch new.
	
	requestWrapper := searchView getSearchRequestWrapper.
	
	self assert: (requestWrapper submorphs includes: searchView searchTextField).
	self assert: (requestWrapper submorphs includes: searchView searchButton).
	
	self assert: requestWrapper submorphs size equals: 2