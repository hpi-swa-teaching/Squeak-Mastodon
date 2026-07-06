render-buttons
getProfileEditButton

	| button |
	button := MTUIPushButton new
		text: self profileEditButtonText;
		setBalloonText: self profileEditButtonBalloonText.
		
	self connect: button signal: #clicked: toSelector: #openProfileSettings.
	
	^ button