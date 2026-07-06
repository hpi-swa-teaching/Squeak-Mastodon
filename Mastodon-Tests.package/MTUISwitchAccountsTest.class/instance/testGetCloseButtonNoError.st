render-buttons
testGetCloseButtonNoError

	| switchAccountsView |
	switchAccountsView := MTUISwitchAccounts new.
	
	self shouldnt: [switchAccountsView getCloseButton] raise: Error