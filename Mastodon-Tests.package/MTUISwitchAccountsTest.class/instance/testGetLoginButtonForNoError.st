render-buttons
testGetLoginButtonForNoError

	| switchAccountsView |
	switchAccountsView := MTUISwitchAccounts new.
	
	self
		shouldnt: [switchAccountsView getLoginButtonFor: MTDataProvider firstAccountCredentials]
		raise: Error