accessing-buttons
clearImagesButton

	^ clearImagesButton ifNil: [
		clearImagesButton := self getClearImagesButton.
		self updateClearImagesButton.
		^ clearImagesButton]