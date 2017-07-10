as yet unclassified
addImageButton
	| imageButton |
	
	imageButton := UiPushButton new.
	imageButton text: 'select Image'.
	self
		connect: imageButton
 		signal: #clicked:
 		toSelector: #selectImage.
	
	self addMorphBack: imageButton.
	self addMorphBack: imageButton.