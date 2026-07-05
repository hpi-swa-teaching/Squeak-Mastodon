helpers
testGetLoginLogoutButtonForReturnsLoginButtonForOtherCredentials

	| switchAccountsView button |
	switchAccountsView := MTUISwitchAccounts new.
	
	button := switchAccountsView getLoginLogoutButtonFor: MTDataProvider secondAccountCredentials.
	
	self assert: button label equals: switchAccountsView loginButtonText.
	self assert: button balloonText equals: switchAccountsView loginButtonBalloonText