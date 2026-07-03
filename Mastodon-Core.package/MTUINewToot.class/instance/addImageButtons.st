render-buttons
addImageButtons

	| wrapper clearAllButton |
	wrapper := Morph new
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		layoutInset: -5;
		cellInset: 5;
		color: Color transparent.
	
	self imageButton: (MTUIPushButton new
		text: 'Select Image';
		setBalloonText: 'Attach image(s) to this toot').
	
	self connect: self imageButton signal: #clicked: toSelector: #selectImage.
	wrapper addMorphBack: self imageButton.
	
	clearAllButton := MTUIPushButton new
		text: 'Clear Images';
		setBalloonText: 'Remove all attached images'.
		
	self connect: clearAllButton signal: #clicked: toSelector: #removeMedia.
	wrapper addMorphBack: clearAllButton.
	
	self addMorphBack: wrapper