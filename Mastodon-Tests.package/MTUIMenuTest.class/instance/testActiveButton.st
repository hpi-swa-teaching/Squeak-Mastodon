morphic
testActiveButton

	| buttonBar firstButton secondButton |
	buttonBar := MTUIMenu new.
	
	firstButton := MTUIMenuButtonClassTest new
		id: #home;
		yourself.
	
	secondButton := MTUIMenuButtonClassTest new
		id: #profile;
		yourself.
	
	buttonBar
		addMorph: firstButton;
		addMorph: secondButton.
	
	buttonBar activeButton: #profile.
	
	self assert: firstButton active equals: false.
	self assert: secondButton active equals: true.
	
	self assert: firstButton renderCalled.
	self assert: secondButton renderCalled