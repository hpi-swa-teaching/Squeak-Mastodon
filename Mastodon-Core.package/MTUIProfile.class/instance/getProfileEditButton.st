render-buttons
getProfileEditButton

	| button |
	button := MTUIPushButton new.
	button text: 'Edit Profile'.
	button setBalloonText: 'Change username, description, avatar of current profile'.
	self connect: button signal: #clicked: toSelector: #openProfileSettings.
	^ button