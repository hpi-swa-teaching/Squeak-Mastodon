render
testGetNameTextContents

	| profileSettingsView nameText |
	profileSettingsView := MTUIProfileSettings new.
	
	nameText := profileSettingsView getNameText.
	
	self assert: nameText contents asString equals: profileSettingsView account displayName