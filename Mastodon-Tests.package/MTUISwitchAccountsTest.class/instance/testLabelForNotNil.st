helpers
testLabelForNotNil

	| switchAccountsView |
	switchAccountsView := MTUISwitchAccounts new.
	
	self assert: (switchAccountsView labelFor: 'Test') notNil