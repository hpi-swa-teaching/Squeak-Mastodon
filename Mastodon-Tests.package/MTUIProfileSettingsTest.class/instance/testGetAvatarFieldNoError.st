render
testGetAvatarFieldNoError

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettings new.
	
	self shouldnt: [profileSettingsView getAvatarField] raise: Error