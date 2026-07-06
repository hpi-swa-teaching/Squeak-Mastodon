render
testGetNameFieldWidth

	| profileSettingsView nameField |
	profileSettingsView := MTUIProfileSettings new.
	
	nameField := profileSettingsView getNameField.
	
	self assert: nameField width equals: profileSettingsView fieldWidth