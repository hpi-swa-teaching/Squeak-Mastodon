render-buttons
getProfileEditButton

	| button |
	button := MTUIPushButton new.
	button text: 'Edit Profile'.
	self connect: button signal: #clicked: toSelector: #openProfileSettings.
	^ button