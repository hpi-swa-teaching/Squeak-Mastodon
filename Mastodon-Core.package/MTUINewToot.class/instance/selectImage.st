image
selectImage

	imageButton enabled: false.
	self removeOldMorph.
	self tootTextArea contents size = 0 ifTrue: [sendButton enabled: false].
	self imageMorph: self loadImage.
	self showImage.
	imageButton enabled: true.
	self imageMorph ifNotNil: [sendButton enabled: true]