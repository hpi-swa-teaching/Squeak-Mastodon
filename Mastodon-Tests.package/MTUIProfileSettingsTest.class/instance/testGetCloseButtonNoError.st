render-buttons
testGetCloseButtonNoError

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettings new.
	
	self shouldnt: [profileSettingsView getCloseButton] raise: Error