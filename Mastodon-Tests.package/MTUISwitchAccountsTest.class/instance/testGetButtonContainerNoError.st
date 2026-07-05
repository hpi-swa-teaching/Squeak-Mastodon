render-container
testGetButtonContainerNoError

	| switchAccountsView |
	switchAccountsView := MTUISwitchAccounts new.
	
	self shouldnt: [switchAccountsView getButtonContainer] raise: Error