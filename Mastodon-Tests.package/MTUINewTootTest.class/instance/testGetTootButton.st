render-buttons
testGetTootButton

	| newTootView button |
	newTootView := MTUINewToot new.
	
	button := newTootView getTootButton.
	
	self assert: button class equals: MTUIPushButton.
	self assert: button text equals: newTootView tootButtonText.
	self assert: button balloonText equals: newTootView tootButtonBalloonText