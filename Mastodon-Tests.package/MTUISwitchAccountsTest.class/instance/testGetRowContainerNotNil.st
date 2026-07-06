render-container
testGetRowContainerNotNil

	| switchAccountsView |
	switchAccountsView := MTUISwitchAccounts new.
	
	self assert: switchAccountsView getRowContainer notNil