render-buttons
testGetSaveButtonNoError

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettings new.
	
	self shouldnt: [profileSettingsView getSaveButton] raise: Error