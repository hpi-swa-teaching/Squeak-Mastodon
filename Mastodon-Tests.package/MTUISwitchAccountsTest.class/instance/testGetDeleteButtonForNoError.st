render-buttons
testGetDeleteButtonForNoError

	| switchAccountsView |
	switchAccountsView := MTUISwitchAccounts new.
	
	self
		shouldnt: [switchAccountsView getDeleteButtonFor: MTDataProvider firstAccountCredentials]
		raise: Error