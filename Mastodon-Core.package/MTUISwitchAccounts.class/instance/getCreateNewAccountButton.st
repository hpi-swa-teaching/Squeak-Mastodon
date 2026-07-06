render-buttons
getCreateNewAccountButton

	| button |
	button := MTUIPushButton new
		text: self createNewAccountButtonText;
		setBalloonText: self createNewAccountButtonBalloonText.
	
	self connect: button signal: #clicked: toSelector: #openAddAccount.
	
	^ button