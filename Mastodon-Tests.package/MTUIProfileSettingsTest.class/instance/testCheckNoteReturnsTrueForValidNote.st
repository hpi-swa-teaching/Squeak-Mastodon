actions
testCheckNoteReturnsTrueForValidNote

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettings new.
	
	profileSettingsView noteText contents: 'note'.
	
	self assert: profileSettingsView checkNote