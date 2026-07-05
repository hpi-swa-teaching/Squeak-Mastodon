render-buttons
testGetProfileEditButton

	| profileView button |
	profileView := self getProfileViewForFirstAccount.
	
	button := profileView getProfileEditButton.
	
	self assert: button class equals: MTUIPushButton.
	self assert: button text equals: profileView profileEditButtonText.
	self assert: button balloonText equals: profileView profileEditButtonBalloonText