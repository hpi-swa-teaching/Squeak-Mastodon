render-buttons
testGetCloseButtonNotNil

	| switchAccountsView |
	switchAccountsView := MTUISwitchAccounts new.
	
	self assert: switchAccountsView getCloseButton notNil