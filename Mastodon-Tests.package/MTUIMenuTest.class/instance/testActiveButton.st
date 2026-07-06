morphic
testActiveButton

	| buttonBar firstButton secondButton |
	buttonBar := MTUIMenu new.
	
	firstButton := MTUIMenuButton new
		id: #home;
		yourself.
	
	secondButton := MTUIMenuButton new
		id: #profile;
		yourself.
	
	buttonBar
		addMorph: firstButton;
		addMorph: secondButton.
	
	buttonBar activeButton: #profile.
	
	self assert: firstButton active equals: false.
	self assert: secondButton active equals: true