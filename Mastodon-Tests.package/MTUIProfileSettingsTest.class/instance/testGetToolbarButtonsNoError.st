render-buttons
testGetToolbarButtonsNoError

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettings new.
	
	self shouldnt: [profileSettingsView getToolbarButtons] raise: Error