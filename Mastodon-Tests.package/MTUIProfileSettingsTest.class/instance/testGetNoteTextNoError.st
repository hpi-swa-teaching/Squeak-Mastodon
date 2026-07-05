render
testGetNoteTextNoError

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettings new.
	
	self shouldnt: [profileSettingsView getNoteText] raise: Error