render-buttons
testGetWhoCanQuoteButton

	| newTootView button |
	newTootView := MTUINewToot new.
	button := newTootView getWhoCanQuoteButton.
	
	self assert: button class equals: MTUIPushButton.
	self assert: button text equals: 'Who can quote: '.
	self assert: button balloonText equals: 'Choose who can quote this toot'