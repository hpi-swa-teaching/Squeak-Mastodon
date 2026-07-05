actions
testSaveProfileChangesDoesNothingForInvalidDisplayName

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettingsClassTest new.
	profileSettingsView nameText contents: (String new: profileSettingsView maximumDisplayNameLength + 1 withAll: $a).
	
	profileSettingsView saveProfileChanges.
	
	self deny: self mastodonApi updateCredentialsAvatarHeaderCalled