render-buttons
testGetCloseButtonNotNil

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettings new.
	
	self assert: profileSettingsView getCloseButton notNil