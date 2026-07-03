morphic
testDrawButtons

	| menuBar firstButton secondButton |
	menuBar := MTUIMenu new.
	
	firstButton := MTUIMenuButtonClassTest new
		id: #home;
		yourself.
	
	secondButton := MTUIMenuButtonClassTest new
		id: #profile;
		yourself.
	
	menuBar buttons
		add: firstButton;
		add: secondButton.
	
	menuBar drawButtons.
	
	self assert: (menuBar submorphs includes: firstButton).
	self assert: (menuBar submorphs includes: secondButton).
	
	self assert: firstButton renderCalled.
	self assert: secondButton renderCalled