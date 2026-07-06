render
testRenderNoError

	| searchView |
	searchView := MTUISearch new.
	
	self shouldnt: [searchView render] raise: Error