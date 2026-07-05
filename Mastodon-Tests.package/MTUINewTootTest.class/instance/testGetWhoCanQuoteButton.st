render-buttons
testGetWhoCanQuoteButton

	| newTootView button |
	newTootView := MTUINewToot new.
	
	button := newTootView getWhoCanQuoteButton.
	
	self assert: button class equals: MTUIPushButton.
	self assert: button text equals: newTootView whoCanQuoteButtonText.
	self assert: button balloonText equals: newTootView whoCanQuoteButtonBalloonText