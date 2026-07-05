actions
testRemovePreviousResultsNoError

	| searchView |
	searchView := MTUISearch new.
	
	self shouldnt: [searchView removePreviousResults] raise: Error