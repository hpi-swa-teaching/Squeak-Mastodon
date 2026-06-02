getter/setter
testFollowersCount

	| Model |
	Model := MTAccount new.
	
	Model followersCount: DataProvider defaultFollowersCount.
	
	self assert: Model followersCount equals: DataProvider defaultFollowersCount.