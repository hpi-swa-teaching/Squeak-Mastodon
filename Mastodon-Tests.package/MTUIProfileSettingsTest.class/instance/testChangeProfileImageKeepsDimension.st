actions
testChangeProfileImageKeepsDimension

	| profileSettingsView image |
	profileSettingsView := MTUIProfileSettings new.
	image := MTDataProvider emptyImageForm.
	
	profileSettingsView changeProfileImageFor: image.
	
	self
		assert: profileSettingsView avatarField image extent
		equals: profileSettingsView fieldWidth @ profileSettingsView fieldWidth