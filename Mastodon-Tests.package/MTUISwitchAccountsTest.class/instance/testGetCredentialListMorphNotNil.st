render
testGetCredentialListMorphNotNil

	| switchAccountsView |
	switchAccountsView := MTUISwitchAccounts new.
	
	self assert: switchAccountsView getCredentialListMorph notNil