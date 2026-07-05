actions
testChangeViewToProfileViewNoError

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettings new.
	
	self shouldnt: [profileSettingsView changeViewToProfileView] raise: Error