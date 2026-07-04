render-buttons
testGetClearImagesButton

	| newTootView button |
	newTootView := MTUINewToot new.
	button := newTootView getClearImagesButton.
	
	self assert: button class equals: MTUIPushButton.
	self assert: button text equals: 'Clear Images'.
	self assert: button balloonText equals: 'Remove all attached images'