tests
testAccountStatusesCount

	| model |
	model := MTAccount new.
	
	model statusesCount: 1337.
	
	self assert: model statusesCount equals: 1337