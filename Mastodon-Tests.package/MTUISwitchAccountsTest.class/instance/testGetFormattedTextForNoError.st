helpers
testGetFormattedTextForNoError

	| switchAccountsView |
	switchAccountsView := MTUISwitchAccounts new.
	
	self
		shouldnt: [switchAccountsView getFormattedTextFor: MTDataProvider firstAccountCredentials]
		raise: Error