render-buttons
testGetTootButton

	| newTootView button |
	newTootView := MTUINewToot new.
	button := newTootView getTootButton.
	
	self assert: button class equals: MTUIPushButton.
	self assert: button text equals: 'Toot'.
	self assert: button balloonText equals: 'Post new toot'