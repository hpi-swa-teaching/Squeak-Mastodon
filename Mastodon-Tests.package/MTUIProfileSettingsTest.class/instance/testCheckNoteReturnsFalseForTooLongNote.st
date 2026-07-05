actions
testCheckNoteReturnsFalseForTooLongNote

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettingsClassTest new.
	
	profileSettingsView noteText contents: (String new: 161 withAll: $a).
	
	self deny: profileSettingsView checkNote