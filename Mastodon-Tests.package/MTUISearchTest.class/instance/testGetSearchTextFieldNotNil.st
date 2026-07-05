render
testGetSearchTextFieldNotNil

	| searchView |
	searchView := MTUISearch new.
	
	self assert: searchView getSearchTextField notNil