getter/setter
testFollowersCount

	| account |
	account := MTAccount new.
	
	account followersCount: DataProvider defaultFollowersCount.
	
	self assert: account followersCount equals: DataProvider defaultFollowersCount