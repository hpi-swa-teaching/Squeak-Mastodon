render-container
testGetToolbarContainerNotNil

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettings new.

	self assert: profileSettingsView getToolbarContainer notNil