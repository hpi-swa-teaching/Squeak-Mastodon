image
selectImage

	| image |
	self selectImageButton enabled: false.
	
	image := self loadImage.
	image ifNotNil: [self media add: image].
	
	self
		updateMediaPreview;
		updateTootButton;
		updateSelectImageButton.
	
	^ image