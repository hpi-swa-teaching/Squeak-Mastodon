render-buttons
testGetToolbarButtonsNotNil

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettings new.
	
	self assert: profileSettingsView getToolbarButtons notNil