actions
testChangeProfileImageKeepsDimensionLarge

	| profileSettingsView image |
	profileSettingsView := MTUIProfileSettings new.
	image := MTDataProvider emptyImageFormLarge.
	
	profileSettingsView changeProfileImageFor: image.
	
	self
		assert: profileSettingsView avatarField image extent
		equals: profileSettingsView fieldWidth @ profileSettingsView fieldWidth