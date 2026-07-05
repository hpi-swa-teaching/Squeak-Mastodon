helpers
testDisplayNameForReturnsUnknownAccountWhenAccountIsNil

	| switchAccountsView credential displayName |
	switchAccountsView := MTUISwitchAccounts new.
	
	credential := MTDataProvider firstAccountCredentials copy account: nil.
	
	displayName := switchAccountsView displayNameFor: credential.
	
	self assert: displayName equals: '@unknown'