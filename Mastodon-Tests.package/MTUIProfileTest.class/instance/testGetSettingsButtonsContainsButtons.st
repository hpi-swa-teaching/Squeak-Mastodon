render-buttons
testGetSettingsButtonsContainsButtons

	| profileView settingsButtons |
	profileView := self getProfileViewForFirstAccount.
	
	settingsButtons := profileView getSettingsButtons.
	
	self assert: (settingsButtons submorphs includes: profileView profileEditButton).
	self assert: (settingsButtons submorphs includes: profileView profileSwitchButton).
	
	self assert: settingsButtons submorphs size equals: 2