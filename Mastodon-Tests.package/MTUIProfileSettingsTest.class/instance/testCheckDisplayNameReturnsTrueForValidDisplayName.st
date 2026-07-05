actions
testCheckDisplayNameReturnsTrueForValidDisplayName

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettings new.
	
	profileSettingsView nameText contents: 'display name'.
	
	self assert: profileSettingsView checkDisplayName