render-container
testGetContainerNoError

	| searchView |
	searchView := MTUISearch new.
	
	self shouldnt: [searchView getContainer] raise: Error