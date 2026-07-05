helpers
testFederatedUsernameForReturnsUnknownWhenFederatedUsernameIsNil

	| switchAccountsView credential account federatedUsername |
	switchAccountsView := MTUISwitchAccounts new.
	account := MTDataProvider firstAccount copy federatedUsername: nil.
	credential := MTDataProvider firstAccountCredentials copy account: account.
	
	federatedUsername := switchAccountsView federatedUsernameFor: credential.
	
	self assert: federatedUsername equals: '@unknown'