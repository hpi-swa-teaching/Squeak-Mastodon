actions
testCheckNoteShowsInformForTooLongNote

	| profileSettingsView |
	profileSettingsView := MTUIProfileSettingsClassTest new.
	
	profileSettingsView noteText contents: (String new: 161 withAll: $a).
	
	profileSettingsView checkNote.
	
	self assert: profileSettingsView informCalled.
	self assert: profileSettingsView informMessage equals: profileSettingsView tooLongNoteInformMessage