render-buttons
getSelectImageButton

	| button |
	button := MTUIPushButton new
		text: 'Select Image';
		setBalloonText: 'Attach image(s) to this toot'.
	
	self connect: button signal: #clicked: toSelector: #selectImage.
	
	^ button