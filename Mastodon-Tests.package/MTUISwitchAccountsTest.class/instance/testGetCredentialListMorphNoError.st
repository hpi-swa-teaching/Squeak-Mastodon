render
testGetCredentialListMorphNoError

	| switchAccountsView |
	switchAccountsView := MTUISwitchAccounts new.
	
	self shouldnt: [switchAccountsView getCredentialListMorph] raise: Error