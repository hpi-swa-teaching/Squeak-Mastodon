render-container
testGetProfileContainerNotNil

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettings new.

	self assert: profileSettingsView getProfileContainer notNil