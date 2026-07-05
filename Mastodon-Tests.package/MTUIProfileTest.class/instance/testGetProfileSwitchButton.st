render-buttons
testGetProfileSwitchButton

	| profileView button |
	profileView := self getProfileViewForFirstAccount.
	
	button := profileView getProfileSwitchButton.
	
	self assert: button class equals: MTUIPushButton.
	self assert: button text equals: profileView profileSwitchButtonText.
	self assert: button balloonText equals: profileView profileSwitchButtonBalloonText