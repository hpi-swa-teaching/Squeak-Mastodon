actions
testCheckDisplayNameReturnsFalseForTooLongDisplayName

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettingsClassTest new.
	
	profileSettingsView nameText contents: (String new: 31 withAll: $a).
	
	self deny: profileSettingsView checkDisplayName