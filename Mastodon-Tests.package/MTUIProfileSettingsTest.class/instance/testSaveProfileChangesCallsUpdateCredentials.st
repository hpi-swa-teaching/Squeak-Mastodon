actions
testSaveProfileChangesCallsUpdateCredentials

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettings new.
	
	profileSettingsView nameText contents: 'display name'.
	profileSettingsView noteText contents: 'note'.
	
	profileSettingsView saveProfileChanges.
	
	self assert: profileSettingsView mastodonApi updateCredentialsAvatarHeaderCalled