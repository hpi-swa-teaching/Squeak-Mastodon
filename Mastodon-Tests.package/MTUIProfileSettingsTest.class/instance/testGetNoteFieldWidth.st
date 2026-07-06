render
testGetNoteFieldWidth

	| profileSettingsView noteField |
	profileSettingsView := MTUIProfileSettings new.
	
	noteField := profileSettingsView getNoteField.
	
	self assert: noteField width equals: profileSettingsView fieldWidth