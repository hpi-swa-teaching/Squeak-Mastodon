render-buttons
testGetSaveButtonNotNil

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettings new.
	
	self assert: profileSettingsView getSaveButton notNil