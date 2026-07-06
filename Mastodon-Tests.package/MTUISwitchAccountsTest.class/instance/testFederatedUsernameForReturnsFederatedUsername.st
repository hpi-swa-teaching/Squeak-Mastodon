helpers
testFederatedUsernameForReturnsFederatedUsername

	| switchAccountsView federatedUsername |
	switchAccountsView := MTUISwitchAccounts new.
	
	federatedUsername := switchAccountsView federatedUsernameFor: MTDataProvider firstAccountCredentials.
	
	self assert: federatedUsername equals: MTDataProvider firstAccount federatedUsername