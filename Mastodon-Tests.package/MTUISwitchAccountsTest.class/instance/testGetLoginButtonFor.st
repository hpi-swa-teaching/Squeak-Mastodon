render-buttons
testGetLoginButtonFor

	| switchAccountsView button |
	switchAccountsView := MTUISwitchAccounts new.
	
	button := switchAccountsView getLoginButtonFor: MTDataProvider firstAccountCredentials.
	
	self assert: button class equals: SimpleButtonMorph.
	self assert: button label equals: switchAccountsView loginButtonText.
	self assert: button balloonText equals: switchAccountsView loginButtonBalloonText.
	self assert: button color equals: switchAccountsView loginButtonColor