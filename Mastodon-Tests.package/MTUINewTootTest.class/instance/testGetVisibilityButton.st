render-buttons
testGetVisibilityButton

	| newTootView button |
	newTootView := MTUINewToot new.
	
	button := newTootView getVisibilityButton.
	
	self assert: button class equals: MTUIPushButton.
	self assert: button text equals: newTootView visibilityButtonText.
	self assert: button balloonText equals: newTootView visibilityButtonBalloonText