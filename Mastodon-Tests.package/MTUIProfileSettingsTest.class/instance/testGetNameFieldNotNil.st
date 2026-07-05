render
testGetNameFieldNotNil

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettings new.
	
	self assert: profileSettingsView getNameField notNil