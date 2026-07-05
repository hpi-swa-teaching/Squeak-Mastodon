render-buttons
getSelectImageButton

	| button |
	button := MTUIPushButton new
		text: self selectImageButtonText;
		setBalloonText: self selectImageButtonBalloonText.
	
	self connect: button signal: #clicked: toSelector: #selectImage.
	
	^ button