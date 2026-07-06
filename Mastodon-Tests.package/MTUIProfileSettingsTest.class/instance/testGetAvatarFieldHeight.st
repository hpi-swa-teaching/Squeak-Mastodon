render
testGetAvatarFieldHeight

	| profileSettingsView avatarField |
	profileSettingsView := MTUIProfileSettings new.
	
	avatarField := profileSettingsView getAvatarField.
	
	self assert: avatarField height equals: profileSettingsView fieldWidth