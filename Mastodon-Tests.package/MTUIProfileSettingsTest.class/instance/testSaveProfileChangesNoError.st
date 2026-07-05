actions
testSaveProfileChangesNoError

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettings new.
	
	self shouldnt: [profileSettingsView saveProfileChanges] raise: Error