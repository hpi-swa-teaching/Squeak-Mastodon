helpers
testLabelForNoError

	| switchAccountsView |
	switchAccountsView := MTUISwitchAccounts new.
	
	self shouldnt: [switchAccountsView labelFor: 'Test'] raise: Error