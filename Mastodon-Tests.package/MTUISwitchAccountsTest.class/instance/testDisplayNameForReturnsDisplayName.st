helpers
testDisplayNameForReturnsDisplayName

	| switchAccountsView displayName |
	switchAccountsView := MTUISwitchAccounts new.
	
	displayName := switchAccountsView displayNameFor: MTDataProvider firstAccountCredentials.
	
	self assert: displayName equals: MTDataProvider firstAccount displayName