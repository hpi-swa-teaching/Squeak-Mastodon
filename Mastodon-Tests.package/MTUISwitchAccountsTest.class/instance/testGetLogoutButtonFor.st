render-buttons
testGetLogoutButtonFor

	| switchAccountsView button |
	switchAccountsView := MTUISwitchAccounts new.
	
	button := switchAccountsView getLogoutButtonFor: MTDataProvider firstAccountCredentials.
	
	self assert: button class equals: SimpleButtonMorph.
	self assert: button label equals: switchAccountsView logoutButtonText.
	self assert: button balloonText equals: switchAccountsView logoutButtonBalloonText.
	self assert: button color equals: switchAccountsView logoutButtonColor