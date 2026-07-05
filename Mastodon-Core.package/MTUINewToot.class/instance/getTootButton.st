render-buttons
getTootButton

	| button |
	button := MTUIPushButton new
		text: self tootButtonText;
		setBalloonText: self tootButtonBalloonText.
	
	self connect: button signal: #clicked: toSelector: #toot.
	
	^ button