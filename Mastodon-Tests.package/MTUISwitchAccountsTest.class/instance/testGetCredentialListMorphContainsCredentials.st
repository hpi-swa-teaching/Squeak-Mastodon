render
testGetCredentialListMorphContainsCredentials

	| switchAccountsView credentialListMorph |
	switchAccountsView := MTUISwitchAccounts new.
	MTCredentialStore getInstance credentials: {MTDataProvider firstAccountCredentials. MTDataProvider secondAccountCredentials}.
	
	credentialListMorph := switchAccountsView getCredentialListMorph.
	
	self assert: credentialListMorph submorphs size equals: 2