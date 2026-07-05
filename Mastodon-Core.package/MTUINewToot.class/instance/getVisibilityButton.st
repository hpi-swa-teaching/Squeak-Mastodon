render-buttons
getVisibilityButton

	| button |
	button := MTUIPushButton new
		text: self visibilityButtonText;
		setBalloonText: self visibilityButtonBalloonText.
	
	self connect: button signal: #clicked: toSelector: #showVisibilityWindow.
	
	^ button