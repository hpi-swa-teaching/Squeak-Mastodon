render-buttons
testGetCreateNewAccountButtonNoError

	| switchAccountsView |
	switchAccountsView := MTUISwitchAccounts new.
	
	self shouldnt: [switchAccountsView getCreateNewAccountButton] raise: Error