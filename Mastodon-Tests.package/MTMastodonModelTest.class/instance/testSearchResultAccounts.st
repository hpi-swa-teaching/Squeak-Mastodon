tests
testSearchResultAccounts

	| model |
	model := MTSearchResult new.
	
	model accounts: 'schmidtflo'.
	
	self assert: model accounts equals: 'schmidtflo'