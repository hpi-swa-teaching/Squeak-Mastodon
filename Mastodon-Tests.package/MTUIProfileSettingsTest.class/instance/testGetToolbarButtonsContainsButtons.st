render-buttons
testGetToolbarButtonsContainsButtons

	| profileSettingsView toolbarButtons |
	profileSettingsView := MTUIProfileSettings new.
	
	toolbarButtons := profileSettingsView getToolbarButtons.
	
	self assert: (toolbarButtons submorphs includes: profileSettingsView closeButton).
	self assert: (toolbarButtons submorphs includes: profileSettingsView saveButton).
	
	self assert: toolbarButtons submorphs size equals: 2