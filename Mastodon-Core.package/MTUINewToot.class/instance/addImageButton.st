as yet unclassified
addImageButton
	| imageButton |
	
	imageButton := UiPushButton new.
	imageButton text: 'Toot with Image from Link'.
	self
		connect: imageButton
 		signal: #clicked:
 		toSelector: #tootImage.
	
	self addMorphBack: imageButton.
	self addMorphBack: imageButton.