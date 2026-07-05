actions
testChangeProfileImageKeepsDimensionVertical

	| profileSettingsView image |
	profileSettingsView := MTUIProfileSettings new.
	image := MTDataProvider emptyImageFormVertical.

	profileSettingsView changeProfileImageFor: image.

	self assert: profileSettingsView avatarField image width <= profileSettingsView fieldWidth.
	self assert: profileSettingsView avatarField image height <= profileSettingsView fieldWidth.