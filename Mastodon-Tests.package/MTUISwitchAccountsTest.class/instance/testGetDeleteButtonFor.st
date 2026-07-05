render-buttons
testGetDeleteButtonFor

	| switchAccountsView button |
	switchAccountsView := MTUISwitchAccounts new.
	
	button := switchAccountsView getDeleteButtonFor: MTDataProvider firstAccountCredentials.
	
	self assert: button class equals: SimpleButtonMorph.
	self assert: button label equals: switchAccountsView deleteButtonText.
	self assert: button balloonText equals: switchAccountsView deleteButtonBalloonText.
	self assert: button color equals: switchAccountsView deleteButtonColor