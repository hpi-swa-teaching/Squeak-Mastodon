render
testGetNoteTextContents

	| profileSettingsView noteText |
	profileSettingsView := MTUIProfileSettings new.
	
	noteText := profileSettingsView getNoteText.
	
	self assert: noteText contents asString equals: profileSettingsView account note asHtmlText asString