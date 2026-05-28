image
selectImage

	self removeOldMorph.
	self tootTextArea contents size = 0 ifTrue: [sendButton enabled: false].
	self imageMorph: self loadImage.
	self showImage.
	self imageMorph ifNotNil: [sendButton enabled: true]