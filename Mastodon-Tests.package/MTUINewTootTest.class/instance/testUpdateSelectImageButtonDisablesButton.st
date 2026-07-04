updating
testUpdateSelectImageButtonDisablesButton

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView
		media: (Array new: newTootView maximumNumberOfAttachedImages withAll: MTDataProvider emptyImageForm);
		updateSelectImageButton.
	
	self deny: newTootView selectImageButton enabled