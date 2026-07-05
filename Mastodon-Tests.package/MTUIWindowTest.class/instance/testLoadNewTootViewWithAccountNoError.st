views
testLoadNewTootViewWithAccountNoError

	| window |
	window := MTUIWindow new.
	
	self shouldnt: [window loadNewTootViewWithAccount: MTDataProvider firstAccount] raise: Error