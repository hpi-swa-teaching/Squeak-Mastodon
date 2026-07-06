accessing-buttons
selectImageButton

	^ selectImageButton ifNil: [
		selectImageButton := self getSelectImageButton.
		self updateSelectImageButton.
		^ selectImageButton]