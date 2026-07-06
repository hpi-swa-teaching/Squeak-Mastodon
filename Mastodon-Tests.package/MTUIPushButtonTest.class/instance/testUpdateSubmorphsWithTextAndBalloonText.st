updating
testUpdateSubmorphsWithTextAndBalloonText

	| button |
	button := MTUIPushButton new
		text: 'This is a button';
		setBalloonText: 'If you click it, it does something.'.
	
	self shouldnt: [button updateSubmorphs] raise: Error