updating
updateClearImagesButton

	| inputedMedia |
	inputedMedia := self media.
	self clearImagesButton enabled: inputedMedia notEmpty