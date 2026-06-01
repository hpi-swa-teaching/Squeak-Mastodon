image
selectImage

	imageButton enabled: false.
	self removeOldMorph.
	tootTextArea contents size = 0 ifTrue: [sendButton enabled: false].
	self imageMorph: self loadImage.
	self showImage.
	imageButton enabled: true.
	imageMorph = 'empty' ifFalse: [sendButton enabled: true]