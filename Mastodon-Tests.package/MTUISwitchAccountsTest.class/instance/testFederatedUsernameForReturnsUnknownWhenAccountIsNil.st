helpers
testFederatedUsernameForReturnsUnknownWhenAccountIsNil

	| switchAccountsView credential federatedUsername |
	switchAccountsView := MTUISwitchAccounts new.
	credential := MTDataProvider firstAccountCredentials copy account: nil.
	
	federatedUsername := switchAccountsView federatedUsernameFor: credential.
	
	self assert: federatedUsername equals: '@unknown'