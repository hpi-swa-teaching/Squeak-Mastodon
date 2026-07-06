render-buttons
testGetCreateNewAccountButtonNotNil

	| switchAccountsView |
	switchAccountsView := MTUISwitchAccounts new.
	
	self assert: switchAccountsView getCreateNewAccountButton notNil