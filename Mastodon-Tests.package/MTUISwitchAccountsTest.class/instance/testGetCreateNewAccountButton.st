render-buttons
testGetCreateNewAccountButton

	| switchAccountsView button |
	switchAccountsView := MTUISwitchAccounts new.
	
	button := switchAccountsView getCreateNewAccountButton.
	
	self assert: button class equals: MTUIPushButton.
	self assert: button text equals: switchAccountsView createNewAccountButtonText.
	self assert: button balloonText equals: switchAccountsView createNewAccountButtonBalloonText