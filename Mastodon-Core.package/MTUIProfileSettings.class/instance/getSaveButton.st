render-buttons
getSaveButton

	| button |
	button := MTUIPushButton new.
	button text: 'Save Changes'.
	button setBalloonText: 'Save current changes and close'.
	self connect: button signal: #clicked: toSelector: #saveProfileChanges.
	^ button