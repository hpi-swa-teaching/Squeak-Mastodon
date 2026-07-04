render-buttons
testGetVisibilityButton

	| newTootView button |
	newTootView := MTUINewToot new.
	button := newTootView getVisibilityButton.
	
	self assert: button class equals: MTUIPushButton.
	self assert: button text equals: 'Visibility: '.
	self assert: button balloonText equals: 'Choose who can see this toot'