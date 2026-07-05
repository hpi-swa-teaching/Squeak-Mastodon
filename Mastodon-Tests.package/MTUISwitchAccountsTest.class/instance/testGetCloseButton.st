render-buttons
testGetCloseButton

	| switchAccountsView button |
	switchAccountsView := MTUISwitchAccounts new.
	
	button := switchAccountsView getCloseButton.
	
	self assert: button class equals: MTUIPushButton.
	self assert: button text equals: switchAccountsView closeButtonText.
	self assert: button balloonText equals: switchAccountsView closeButtonBalloonText