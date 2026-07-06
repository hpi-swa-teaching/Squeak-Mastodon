render
testGetSearchTitleNotNil

	| searchView |
	searchView := MTUISearch new.
	
	self assert: searchView getSearchTitle notNil