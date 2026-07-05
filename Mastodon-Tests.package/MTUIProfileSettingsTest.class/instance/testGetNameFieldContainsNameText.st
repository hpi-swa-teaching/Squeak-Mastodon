render
testGetNameFieldContainsNameText

	| profileSettingsView nameField |
	profileSettingsView := MTUIProfileSettings new.
	
	nameField := profileSettingsView getNameField.
	
	self assert: (nameField submorphs includes: profileSettingsView nameText)