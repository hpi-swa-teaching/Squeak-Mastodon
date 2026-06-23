render-buttons
getProfileSwitchButton

	| button |
	button := MTUIPushButton new.
	button text: 'Manage Accounts'.
	self connect: button signal: #clicked: toSelector: #openSwitchAccounts.
	^ button