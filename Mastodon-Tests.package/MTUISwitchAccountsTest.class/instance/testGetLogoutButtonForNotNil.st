render-buttons
testGetLogoutButtonForNotNil

	| switchAccountsView |
	switchAccountsView := MTUISwitchAccounts new.
	
	self assert: (switchAccountsView getLogoutButtonFor: MTDataProvider firstAccountCredentials) notNil