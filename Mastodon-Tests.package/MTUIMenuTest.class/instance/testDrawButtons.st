morphic
testDrawButtons

	| menuBar firstButton secondButton |
	menuBar := MTUIMenu new.
	
	firstButton := MTUIMenuButton new
		id: #home;
		yourself.
	
	secondButton := MTUIMenuButton new
		id: #profile;
		yourself.
	
	menuBar buttons
		add: firstButton;
		add: secondButton.
	
	menuBar drawButtons.
	
	self assert: (menuBar submorphs includes: firstButton).
	self assert: (menuBar submorphs includes: secondButton)