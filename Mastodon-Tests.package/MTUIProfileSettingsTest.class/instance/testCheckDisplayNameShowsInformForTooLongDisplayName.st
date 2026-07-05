actions
testCheckDisplayNameShowsInformForTooLongDisplayName

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettingsClassTest new.
	
	profileSettingsView nameText contents: (String new: 31 withAll: $a).
	
	profileSettingsView checkDisplayName.
	
	self assert: profileSettingsView informCalled.
	self assert: profileSettingsView informMessage equals: profileSettingsView tooLongUsernameInformMessage