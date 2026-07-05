actions
testRemoveMediaEnablesSelectImageButton

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView
		media: (Array new: newTootView maximumNumberOfAttachedImages withAll: MTDataProvider emptyImageForm) asOrderedCollection;
		updateSelectImageButton;
		removeMedia.
	
	self assert: newTootView selectImageButton enabled