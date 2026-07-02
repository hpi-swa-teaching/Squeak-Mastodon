tests
testSearchResultAccounts

	| Model |
	Model := MTSearchResult new.
	
	Model accounts: 'schmidtflo'.
	
	self assert: Model accounts equals: 'schmidtflo'