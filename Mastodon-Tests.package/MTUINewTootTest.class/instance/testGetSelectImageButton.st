render-buttons
testGetSelectImageButton

	| newTootView button |
	newTootView := MTUINewToot new.
	button := newTootView getSelectImageButton.
	
	self assert: button class equals: MTUIPushButton.
	self assert: button text equals: 'Select Image'.
	self assert: button balloonText equals: 'Attach image(s) to this toot'