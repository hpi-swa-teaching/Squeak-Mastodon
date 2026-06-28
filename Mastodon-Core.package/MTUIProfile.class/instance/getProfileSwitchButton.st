render-buttons
getProfileSwitchButton

	| button |
	button := MTUIPushButton new.
	button text: 'Manage Accounts'.
	button setBalloonText: 'Add, switch or remove accounts'.
	self connect: button signal: #clicked: toSelector: #openSwitchAccounts.
	^ button