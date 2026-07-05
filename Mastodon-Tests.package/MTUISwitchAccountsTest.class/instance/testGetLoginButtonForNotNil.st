render-buttons
testGetLoginButtonForNotNil

	| switchAccountsView |
	switchAccountsView := MTUISwitchAccounts new.
	
	self assert: (switchAccountsView getLoginButtonFor: MTDataProvider firstAccountCredentials) notNil