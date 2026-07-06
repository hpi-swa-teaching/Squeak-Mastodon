render-buttons
testGetSelectImageButton

	| newTootView button |
	newTootView := MTUINewToot new.
	
	button := newTootView getSelectImageButton.
	
	self assert: button class equals: MTUIPushButton.
	self assert: button text equals: newTootView selectImageButtonText.
	self assert: button balloonText equals: newTootView selectImageButtonBalloonText