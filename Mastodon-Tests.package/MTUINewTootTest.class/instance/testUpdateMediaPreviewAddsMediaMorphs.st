updating
testUpdateMediaPreviewAddsMediaMorphs

	| newTootView image |
	newTootView := MTUINewToot new.
	image := MTDataProvider emptyImageForm.
	
	newTootView
		media: {image};
		updateMediaPreview.
	
	self assert: newTootView mediaPreview submorphs size equals: 1