render-buttons
getImageButtons

	^ self getButtonContainer
		addMorphBack: self selectImageButton;
		addMorphBack: self clearImagesButton