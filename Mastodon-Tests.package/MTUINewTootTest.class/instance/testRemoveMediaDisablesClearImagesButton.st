actions
testRemoveMediaDisablesClearImagesButton

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView
		media: {MTDataProvider emptyImageForm} asOrderedCollection;
		updateClearImagesButton;
		removeMedia.
	
	self deny: newTootView clearImagesButton enabled