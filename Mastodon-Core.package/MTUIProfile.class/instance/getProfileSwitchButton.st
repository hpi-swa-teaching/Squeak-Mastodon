render-buttons
getProfileSwitchButton

	| button |
	button := MTUIPushButton new
		text: self profileSwitchButtonText;
		setBalloonText: self profileSwitchButtonBalloonText.
		
	self connect: button signal: #clicked: toSelector: #openSwitchAccounts.
	
	^ button