updating
testUpdateMediaPreviewAddsOneMorphPerMediaItem

	| newTootView firstImage secondImage |
	newTootView := MTUINewToot new.
	firstImage := MTDataProvider emptyImageForm.
	secondImage := MTDataProvider emptyImageForm.
	
	newTootView
		media: {firstImage. secondImage};
		updateMediaPreview.
	
	self assert: newTootView mediaPreview submorphs size equals: 2