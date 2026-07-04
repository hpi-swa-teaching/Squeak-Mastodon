account
testAccountFollowersCount

	| model |
	model := MTAccount new.
	
	model followersCount: 5.
	
	self assert: model followersCount equals: 5