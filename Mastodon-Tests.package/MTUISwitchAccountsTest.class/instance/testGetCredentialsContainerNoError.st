render-container
testGetCredentialsContainerNoError

	| switchAccountsView |
	switchAccountsView := MTUISwitchAccounts new.
	
	self shouldnt: [switchAccountsView getCredentialsContainer] raise: Error