render-buttons
testGetDeleteButtonForNotNil

	| switchAccountsView |
	switchAccountsView := MTUISwitchAccounts new.
	
	self assert: (switchAccountsView getDeleteButtonFor: MTDataProvider firstAccountCredentials) notNil