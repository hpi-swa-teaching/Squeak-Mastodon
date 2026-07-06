render-container
testGetProfileContainerNoError

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettings new.
	
	self shouldnt: [profileSettingsView getProfileContainer] raise: Error