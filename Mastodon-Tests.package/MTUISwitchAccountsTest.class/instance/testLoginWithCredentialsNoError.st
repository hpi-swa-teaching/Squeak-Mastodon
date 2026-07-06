actions
testLoginWithCredentialsNoError

	| switchAccountsView |
	switchAccountsView := MTUISwitchAccounts new.
	
	self
		shouldnt: [switchAccountsView loginWithCredentials: MTDataProvider firstAccountCredentials]
		raise: Error