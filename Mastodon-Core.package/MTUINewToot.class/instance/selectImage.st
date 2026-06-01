image
selectImage

	self imageButton
		enabled: false;
		removeOldMorph.
	self tootTextArea contents size = 0 ifTrue: [self sendButton enabled: false].
	self
		imageMorph: self loadImage;
		showImage.
	self imageButton enabled: true.
	self imageMorph = 'empty' ifFalse: [self sendButton enabled: true]