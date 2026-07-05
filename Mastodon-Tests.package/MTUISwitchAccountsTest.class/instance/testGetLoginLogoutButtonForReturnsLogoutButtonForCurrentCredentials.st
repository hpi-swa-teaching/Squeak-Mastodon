helpers
testGetLoginLogoutButtonForReturnsLogoutButtonForCurrentCredentials

	| switchAccountsView button |
	switchAccountsView := MTUISwitchAccounts new.
	
	button := switchAccountsView getLoginLogoutButtonFor: MTDataProvider firstAccountCredentials.
	
	self assert: button label equals: switchAccountsView logoutButtonText.
	self assert: button balloonText equals: switchAccountsView logoutButtonBalloonText