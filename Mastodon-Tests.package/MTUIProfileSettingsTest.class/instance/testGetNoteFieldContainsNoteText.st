render
testGetNoteFieldContainsNoteText

	| profileSettingsView noteField |
	profileSettingsView := MTUIProfileSettings new.
	
	noteField := profileSettingsView getNoteField.
	
	self assert: (noteField submorphs includes: profileSettingsView noteText)