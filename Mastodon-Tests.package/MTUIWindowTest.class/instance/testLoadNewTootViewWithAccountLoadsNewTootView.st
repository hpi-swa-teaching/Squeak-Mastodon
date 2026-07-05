views
testLoadNewTootViewWithAccountLoadsNewTootView

	| window |
	window := MTUIWindow new.
	
	window loadNewTootViewWithAccount: MTDataProvider firstAccount.
	
	self assert: window viewMorph class equals: MTUINewToot