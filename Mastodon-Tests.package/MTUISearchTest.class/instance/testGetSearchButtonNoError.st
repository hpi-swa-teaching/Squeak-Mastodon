render-buttons
testGetSearchButtonNoError

	| searchView |
	searchView := MTUISearch new.
	
	self shouldnt: [searchView getSearchButton] raise: Error