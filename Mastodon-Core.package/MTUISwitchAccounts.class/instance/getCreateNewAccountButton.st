render-buttons
getCreateNewAccountButton

	| button |
	button := MTUIPushButton new.
	button
		text: '+ Add Account';
		setBalloonText: 'Add a new account';
		color: Color veryVeryLightGray.
	self connect: button signal: #clicked: toSelector: #openAddAccount.
	^ button