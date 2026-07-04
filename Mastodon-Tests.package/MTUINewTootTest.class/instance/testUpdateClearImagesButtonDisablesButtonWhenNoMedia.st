updating
testUpdateClearImagesButtonDisablesButtonWhenNoMedia

	| newTootView |
	newTootView := MTUINewToot new.
	newTootView
		media: {};
		updateClearImagesButton.
	
	self deny: newTootView clearImagesButton enabled