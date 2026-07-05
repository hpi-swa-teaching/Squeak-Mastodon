render-buttons
testGetLogoutButtonForNoError

	| switchAccountsView |
	switchAccountsView := MTUISwitchAccounts new.
	
	self
		shouldnt: [switchAccountsView getLogoutButtonFor: MTDataProvider firstAccountCredentials]
		raise: Error