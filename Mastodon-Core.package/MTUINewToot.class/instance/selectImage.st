image
selectImage

	| image |
	self selectImageButton enabled: false.
	
	image := self loadImage.
	image ifNotNil: [self media add: image].
	
	self
		updateMediaPreview;
		updateClearImagesButton;
		updateTootButton;
		updateSelectImageButton.
	
	^ image