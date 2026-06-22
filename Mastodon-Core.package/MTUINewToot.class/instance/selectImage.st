image
selectImage

	| image |
	self imageButton enabled: false.
	image := self loadImage.
	self media add: image.
	self mediaPreview addMorphBack: (image scaledToSize: 300) asMorph.
	self media ifNotEmpty: [self sendButton enabled: true].
	self imageButton enabled: true