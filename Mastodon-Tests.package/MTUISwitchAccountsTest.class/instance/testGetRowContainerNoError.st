render-container
testGetRowContainerNoError

	| switchAccountsView |
	switchAccountsView := MTUISwitchAccounts new.
	
	self shouldnt: [switchAccountsView getRowContainer] raise: Error