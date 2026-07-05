views
testLoadSearchViewNoError

	| window |
	window := MTUIWindow new.
	
	self shouldnt: [window loadSearchView] raise: Error