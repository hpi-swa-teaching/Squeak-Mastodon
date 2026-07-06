render
testGetAvatarFieldWidth

	| profileSettingsView avatarField |
	profileSettingsView := MTUIProfileSettings new.
	
	avatarField := profileSettingsView getAvatarField.
	
	self assert: avatarField width equals: profileSettingsView fieldWidth