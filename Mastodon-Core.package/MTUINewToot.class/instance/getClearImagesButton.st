render-buttons
getClearImagesButton

	| button |
	button := MTUIPushButton new
		text: self clearImagesButtonText;
		setBalloonText: self clearImagesButtonBalloonText.
	
	self connect: button signal: #clicked: toSelector: #removeMedia.
	
	^ button