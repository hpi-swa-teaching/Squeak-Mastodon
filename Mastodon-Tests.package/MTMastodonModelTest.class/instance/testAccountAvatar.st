tests
testAccountAvatar

	| model |
	model := MTAccount new.
	
	model avatar: 'eine url'.
	
	self assert: model avatar equals: 'eine url'