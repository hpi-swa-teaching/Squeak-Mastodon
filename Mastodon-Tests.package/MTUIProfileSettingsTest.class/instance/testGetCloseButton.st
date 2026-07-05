render-buttons
testGetCloseButton

	| profileSettingsView button |
	profileSettingsView := MTUIProfileSettings new.
	
	button := profileSettingsView getCloseButton.
	
	self assert: button class equals: MTUIPushButton.
	self assert: button text equals: profileSettingsView closeButtonText.
	self assert: button balloonText equals: profileSettingsView closeButtonBalloonText