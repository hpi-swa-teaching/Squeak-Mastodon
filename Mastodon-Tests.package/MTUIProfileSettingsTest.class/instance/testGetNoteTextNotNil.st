render
testGetNoteTextNotNil

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettings new.
	
	self assert: profileSettingsView getNoteText notNil