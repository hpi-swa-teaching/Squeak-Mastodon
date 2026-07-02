tests
testAccountFollowingCount

	| model |
	model := MTAccount new.
	
	model followingCount: 5.
	
	self assert: model followingCount equals: 5