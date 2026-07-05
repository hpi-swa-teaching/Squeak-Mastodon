render-buttons
testGetSearchButtonNotNil

	| searchView |
	searchView := MTUISearch new.
	
	self assert: searchView getSearchButton notNil