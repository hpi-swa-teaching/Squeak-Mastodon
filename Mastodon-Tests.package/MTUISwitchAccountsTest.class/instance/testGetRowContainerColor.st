render-container
testGetRowContainerColor

	| switchAccountsView rowContainer |
	switchAccountsView := MTUISwitchAccounts new.
	
	rowContainer := switchAccountsView getRowContainer.
	
	self assert: rowContainer color equals: switchAccountsView rowContainerColor