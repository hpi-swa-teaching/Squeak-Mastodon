views
testLoadNewTootViewWithAccountSetsMention

	| window |
	window := MTUIWindow new.
	
	window loadNewTootViewWithAccount: MTDataProvider firstAccount.
	
	self
		assert: window viewMorph tootTextArea contents asString
		equals: '@', MTDataProvider firstAccount username