render
testGetNameFieldNoError

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettings new.
	
	self shouldnt: [profileSettingsView getNameField] raise: Error