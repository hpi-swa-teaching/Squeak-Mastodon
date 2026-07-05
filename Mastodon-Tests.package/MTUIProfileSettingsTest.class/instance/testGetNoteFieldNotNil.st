render
testGetNoteFieldNotNil

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettings new.
	
	self assert: profileSettingsView getNoteField notNil