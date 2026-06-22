render
addImageButtons

	| wrapper clearAllButton |
	wrapper := Morph new
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		layoutInset: -5;
		cellInset: 5;
		color: Color transparent.
	
	self imageButton: (MTUIPushButton new text: 'select Image').
	self connect: self imageButton signal: #clicked: toSelector: #selectImage.
	wrapper addMorphBack: self imageButton.
	
	clearAllButton := MTUIPushButton new text: 'clear Images'.
	self connect: clearAllButton signal: #clicked: toSelector: #removeMedia.
	wrapper addMorphBack: clearAllButton.
	
	self addMorphBack: wrapper