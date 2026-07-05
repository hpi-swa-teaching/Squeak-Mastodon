render-container
testGetCredentialsContainerNotNil

	| switchAccountsView |
	switchAccountsView := MTUISwitchAccounts new.
	
	self assert: switchAccountsView getCredentialsContainer notNil