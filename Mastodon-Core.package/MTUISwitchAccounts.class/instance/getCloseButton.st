render-buttons
getCloseButton

	| button |
	button := MTUIPushButton new
		text: self closeButtonText;
		setBalloonText: self closeButtonBalloonText.
	
	self connect: button signal: #clicked: toSelector: #changeViewToProfileView.
	
	^ button