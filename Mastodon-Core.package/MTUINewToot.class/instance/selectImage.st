image
selectImage

	| image |
	self imageButton enabled: false.
	
	image := self loadImage ifNil: [self imageButton enabled: true. ^ nil].
	
	self media add: image.
	self mediaPreview addMorphBack: (image scaledToSize: self defaultImageSize) asMorph.
	self sendButton enabled: true.
	self imageButton enabled: true