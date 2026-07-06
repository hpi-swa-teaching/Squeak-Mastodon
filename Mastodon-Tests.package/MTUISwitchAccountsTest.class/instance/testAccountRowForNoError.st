render
testAccountRowForNoError

	| switchAccountsView |
	switchAccountsView := MTUISwitchAccounts new.
	
	self shouldnt: [switchAccountsView accountRowFor: MTDataProvider firstAccountCredentials] raise: Error