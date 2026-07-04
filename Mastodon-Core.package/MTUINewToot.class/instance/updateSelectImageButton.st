updating
updateSelectImageButton

	| inputedMedia |
	inputedMedia := self media.
	
	self selectImageButton enabled: inputedMedia size < self maximumNumberOfAttachedImages