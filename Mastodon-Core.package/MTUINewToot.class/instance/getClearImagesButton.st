render-buttons
getClearImagesButton

	| button |
	button := MTUIPushButton new
		text: 'Clear Images';
		setBalloonText: 'Remove all attached images'.
		
	self connect: button signal: #clicked: toSelector: #removeMedia.
	
	^ button