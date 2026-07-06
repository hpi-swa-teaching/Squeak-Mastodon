render-buttons
testGetSaveButton

	| profileSettingsView button |
	profileSettingsView := MTUIProfileSettings new.
	
	button := profileSettingsView getSaveButton.
	
	self assert: button class equals: MTUIPushButton.
	self assert: button text equals: profileSettingsView saveButtonText.
	self assert: button balloonText equals: profileSettingsView saveButtonBalloonText