updating
testUpdateSubmorphsWithText

	| button |
	button := MTUIPushButton new text: 'This is a button'.
	
	self shouldnt: [button updateSubmorphs] raise: Error