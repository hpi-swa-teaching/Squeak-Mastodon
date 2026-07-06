render-container
testGetToolbarContainerNoError

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettings new.
	
	self shouldnt: [profileSettingsView getToolbarContainer] raise: Error