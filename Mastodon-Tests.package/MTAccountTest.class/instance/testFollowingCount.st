getter/setter
testFollowingCount

	| account |
	account := MTAccount new.
	
	account followingCount: DataProvider defaultFollowingCount.
	
	self assert: account followingCount equals: DataProvider defaultFollowingCount