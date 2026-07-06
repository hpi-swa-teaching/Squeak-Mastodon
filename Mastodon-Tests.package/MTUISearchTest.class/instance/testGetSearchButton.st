render-buttons
testGetSearchButton

	| searchView button |
	searchView := MTUISearch new.
	
	button := searchView getSearchButton.
	
	self assert: button class equals: MTUIPushButton.
	self assert: button text equals: searchView searchButtonText.
	self assert: button balloonText equals: searchView searchButtonBalloonText.
	
	self deny: button enabled