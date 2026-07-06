actions
testSaveProfileChangesDoesNothingForInvalidNote

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettingsClassTest new.
	profileSettingsView noteText contents: (String new: profileSettingsView maximumNoteLength + 1 withAll: $a).
	
	profileSettingsView saveProfileChanges.
	
	self deny: self mastodonApi updateCredentialsAvatarHeaderCalled