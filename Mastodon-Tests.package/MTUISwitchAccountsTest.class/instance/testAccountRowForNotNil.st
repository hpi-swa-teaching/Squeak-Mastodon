render
testAccountRowForNotNil

	| switchAccountsView |
	switchAccountsView := MTUISwitchAccounts new.
	
	self assert: (switchAccountsView accountRowFor: MTDataProvider firstAccountCredentials) notNil